import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import '../controller/pos_payment_cash_controller.dart';
import '../state/pos_payment_cash_state.dart';
import 'package:get_it/get_it.dart';

class PosPaymentCashView extends StatefulWidget {
  const PosPaymentCashView({Key? key}) : super(key: key);

  @override
  State<PosPaymentCashView> createState() => _PosPaymentCashViewState();
}

class _PosPaymentCashViewState extends State<PosPaymentCashView> {
  PosPaymentCashController controller = PosPaymentCashController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<PosPaymentCashController>()) {
      GetIt.I.unregister<PosPaymentCashController>();
    }
    GetIt.I.registerSingleton(controller);
    controller.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => controller.ready(),
    );
    super.initState();
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
      child: BlocListener<PosPaymentCashController, PosPaymentCashState>(
        listener: (context, state) {},
        child: BlocBuilder<PosPaymentCashController, PosPaymentCashState>(
          builder: (context, state) {
            final bloc = context.read<PosPaymentCashController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    PosPaymentCashController controller,
    PosPaymentCashState state,
  ) {
    var posController = GetIt.I<PosController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('PosPaymentCash'),
      ),
      body: Padding(
        padding: EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            QNumberField(
              label: "Total",
              validator: Validator.required,
              value: posController.total.toString(),
              enabled: false,
              onChanged: (value) {},
            ),
            QNumberField(
              label: "Pay Amount",
              validator: Validator.required,
              value: "0",
              onChanged: (value) {
                controller.updateAmount(double.tryParse(value) ?? 0);
              },
            ),
            QNumberField(
              key: Key("return_${state.amount}"),
              label: "Return",
              validator: Validator.required,
              value: "${(state.amount - posController.total) ?? 0}",
              enabled: false,
              onChanged: (value) {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: QActionButton(
        label: "Process",
        onPressed: () async {
          double returnAmount = state.amount - posController.total;
          if (returnAmount < 0) return;
          showLoading();
          await controller.processPayment();
          hideLoading();
          Get.offAll(MainNavigationView());

          if (await showConfirmationDialog()) {
            await Get.to(PosPrintPreviewView());
          }
          // tampilkan dialog utk confirmasi utk print
          snackbarSuccess(message: "Berhasil memproses transaksi!");
        },
      ),
    );
  }
}
