import 'dart:convert';
import 'dart:typed_data';

import 'package:bluetooth_print/bluetooth_print.dart';
import 'package:bluetooth_print/bluetooth_print_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/module/pos/controller/pos_controller.dart';
import 'package:hyper_ui/shared/widget/form/button/button.dart';
import '../controller/pos_print_preview_controller.dart';
import '../state/pos_print_preview_state.dart';
import 'package:get_it/get_it.dart';

class PosPrintPreviewView extends StatefulWidget {
  const PosPrintPreviewView({Key? key}) : super(key: key);

  @override
  State<PosPrintPreviewView> createState() => _PosPrintPreviewViewState();
}

class _PosPrintPreviewViewState extends State<PosPrintPreviewView> {
  PosPrintPreviewController controller = PosPrintPreviewController();
  BluetoothPrint bluetoothPrint = BluetoothPrint.instance;
  bool _connected = false;
  BluetoothDevice? _device;
  String tips = 'no device connect';

  @override
  void initState() {
    if (GetIt.I.isRegistered<PosPrintPreviewController>()) {
      GetIt.I.unregister<PosPrintPreviewController>();
    }
    GetIt.I.registerSingleton(controller);
    controller.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => controller.ready(),
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => initBluetooth());
    super.initState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initBluetooth() async {
    bluetoothPrint.startScan(timeout: Duration(seconds: 4));

    bool isConnected = await bluetoothPrint.isConnected ?? false;

    bluetoothPrint.state.listen((state) {
      print('******************* cur device status: $state');

      switch (state) {
        case BluetoothPrint.CONNECTED:
          setState(() {
            _connected = true;
            tips = 'connect success';
          });
          break;
        case BluetoothPrint.DISCONNECTED:
          setState(() {
            _connected = false;
            tips = 'disconnect success';
          });
          break;
        default:
          break;
      }
    });

    if (!mounted) return;

    if (isConnected) {
      setState(() {
        _connected = true;
      });
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => controller,
      child: BlocListener<PosPrintPreviewController, PosPrintPreviewState>(
        listener: (context, state) {},
        child: BlocBuilder<PosPrintPreviewController, PosPrintPreviewState>(
          builder: (context, state) {
            final bloc = context.read<PosPrintPreviewController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    PosPrintPreviewController controller,
    PosPrintPreviewState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BluetoothPrint example app'),
      ),
      body: RefreshIndicator(
        onRefresh: () =>
            bluetoothPrint.startScan(timeout: Duration(seconds: 4)),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              StreamBuilder<List<BluetoothDevice>>(
                stream: bluetoothPrint.scanResults,
                initialData: [],
                builder: (c, snapshot) {
                  return Column(
                    children: snapshot.data!.map(
                      (d) {
                        if (_device == null &&
                            DBService.get("printer") != null) {
                          if (d.type.toString() == DBService.get("printer")) {
                            _device = d;
                          }
                        }
                        return ListTile(
                          title: Text(d.name ?? ''),
                          subtitle: Text(d.address ?? ''),
                          onTap: () async {
                            setState(() {
                              _device = d;
                              DBService.set("printer", d.type.toString());
                            });
                          },
                          trailing:
                              _device != null && _device!.address == d.address
                                  ? Icon(
                                      Icons.check,
                                      color: Colors.green,
                                    )
                                  : null,
                        );
                      },
                    ).toList(),
                  );
                },
              ),
              Divider(),
              Container(
                padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        OutlinedButton(
                          child: Text('connect'),
                          onPressed: _connected
                              ? null
                              : () async {
                                  if (_device != null &&
                                      _device!.address != null) {
                                    setState(() {
                                      tips = 'connecting...';
                                    });
                                    await bluetoothPrint.connect(_device!);
                                  } else {
                                    setState(() {
                                      tips = 'please select device';
                                    });
                                    print('please select device');
                                  }
                                },
                        ),
                        SizedBox(width: 10.0),
                        OutlinedButton(
                          child: Text('disconnect'),
                          onPressed: _connected
                              ? () async {
                                  setState(() {
                                    tips = 'disconnecting...';
                                  });
                                  await bluetoothPrint.disconnect();
                                }
                              : null,
                        ),
                      ],
                    ),
                    Divider(),
                    QButton(
                      label: "Test Print",
                      onPressed: () async {
                        Map<String, dynamic> config = Map();
                        List<LineText> list = [];
                        list.add(LineText(
                            type: LineText.TYPE_TEXT,
                            content: 'A Title',
                            weight: 1,
                            align: LineText.ALIGN_CENTER,
                            linefeed: 1));
                        list.add(LineText(
                            type: LineText.TYPE_TEXT,
                            content: 'this is conent left',
                            weight: 0,
                            align: LineText.ALIGN_LEFT,
                            linefeed: 1));
                        list.add(LineText(
                            type: LineText.TYPE_TEXT,
                            content: 'this is conent right',
                            align: LineText.ALIGN_RIGHT,
                            linefeed: 1));
                        list.add(LineText(linefeed: 1));
                        list.add(LineText(
                            type: LineText.TYPE_BARCODE,
                            content: 'A12312112',
                            size: 10,
                            align: LineText.ALIGN_CENTER,
                            linefeed: 1));
                        list.add(LineText(linefeed: 1));
                        list.add(LineText(
                            type: LineText.TYPE_QRCODE,
                            content: 'qrcode i',
                            size: 10,
                            align: LineText.ALIGN_CENTER,
                            linefeed: 1));
                        list.add(LineText(linefeed: 1));
                        await bluetoothPrint.printReceipt(config, list);
                      },
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    QButton(
                      label: "Print Faktur",
                      onPressed: () async {
                        PosController posController = GetIt.I<PosController>();
                        PosPaymentCashController posPaymentController =
                            GetIt.I<PosPaymentCashController>();
                        int maxLinesCharacter =
                            'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'.length;
                        // OrderService().create(
                        //   products: posController.state.products,
                        //   total: posController.total,
                        //   amount: state.amount,
                        //   returnAmount: state.amount - posController.total,
                        //   paymentMethod: "Cash",
                        //   status: "Paid",
                        // );

                        double returnAmount =
                            posPaymentController.state.amount -
                                posController.total;

                        Map<String, dynamic> config = Map();
                        List<LineText> list = [];
                        list.add(LineText(
                            type: LineText.TYPE_TEXT,
                            content: 'Cafee App',
                            weight: 1,
                            align: LineText.ALIGN_CENTER,
                            linefeed: 1));

                        list.add(
                          LineText(
                            type: LineText.TYPE_TEXT,
                            content:
                                '${"Payment Type".padRight(14, " ")}: ${'Cash'.padLeft(maxLinesCharacter - 16, " ")}',
                            weight: 0,
                            align: LineText.ALIGN_LEFT,
                            linefeed: 1,
                          ),
                        );

                        list.add(
                          LineText(
                            type: LineText.TYPE_TEXT,
                            content:
                                '${"Total".padRight(14, " ")}: ${posController.total.currency.padLeft(maxLinesCharacter - 16, " ")}',
                            weight: 0,
                            align: LineText.ALIGN_LEFT,
                            linefeed: 1,
                          ),
                        );

                        list.add(
                          LineText(
                            type: LineText.TYPE_TEXT,
                            content:
                                '${"Pay amount".padRight(14, " ")}: ${posPaymentController.state.amount.currency.padLeft(maxLinesCharacter - 16, " ")}',
                            weight: 0,
                            align: LineText.ALIGN_LEFT,
                            linefeed: 1,
                          ),
                        );

                        list.add(
                          LineText(
                            type: LineText.TYPE_TEXT,
                            content:
                                '${"Return amount".padRight(14, " ")}: ${returnAmount.currency.padLeft(maxLinesCharacter - 16, " ")}',
                            weight: 0,
                            align: LineText.ALIGN_LEFT,
                            linefeed: 1,
                          ),
                        );
                        list.add(LineText(linefeed: 1));

                        for (var product in posController.state.products) {
                          if (product.qty == 0) continue;
                          list.add(
                            LineText(
                              type: LineText.TYPE_TEXT,
                              content:
                                  '${product.productName!.padRight(maxLinesCharacter, "")}',
                              weight: 0,
                              align: LineText.ALIGN_LEFT,
                              linefeed: 1,
                            ),
                          );
                          var qtyPrice =
                              '  ${product.qty!.currency} x ${product.price!.currency}';
                          var leftCharacterLength = qtyPrice.length;
                          var rowTotal = product.qty! * product.price!;
                          var rightCharacterMaxLength =
                              maxLinesCharacter - leftCharacterLength;

                          var value = qtyPrice +
                              '${rowTotal.currency.toString().padLeft(rightCharacterMaxLength, " ")}';

                          list.add(
                            LineText(
                              type: LineText.TYPE_TEXT,
                              content: value,
                              weight: 0,
                              align: LineText.ALIGN_LEFT,
                              linefeed: 1,
                            ),
                          );
                        }

                        list.add(LineText(linefeed: 1));
                        list.add(LineText(linefeed: 1));
                        /*
                        list.add(LineText(
                            type: LineText.TYPE_TEXT,
                            content: 'this is conent left',
                            weight: 0,
                            align: LineText.ALIGN_LEFT,
                            linefeed: 1));
                        list.add(LineText(
                            type: LineText.TYPE_TEXT,
                            content: 'this is conent right',
                            align: LineText.ALIGN_RIGHT,
                            linefeed: 1));
                        list.add(LineText(linefeed: 1));
                        list.add(LineText(
                            type: LineText.TYPE_BARCODE,
                            content: 'A12312112',
                            size: 10,
                            align: LineText.ALIGN_CENTER,
                            linefeed: 1));
                        list.add(LineText(linefeed: 1));
                        list.add(LineText(
                            type: LineText.TYPE_QRCODE,
                            content: 'qrcode i',
                            size: 10,
                            align: LineText.ALIGN_CENTER,
                            linefeed: 1));
                        list.add(LineText(linefeed: 1));
                        */
                        await bluetoothPrint.printReceipt(config, list);
                        Get.back();
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
