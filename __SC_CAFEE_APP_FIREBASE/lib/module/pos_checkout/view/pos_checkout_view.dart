import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import '../controller/pos_checkout_controller.dart';
import '../state/pos_checkout_state.dart';
import 'package:get_it/get_it.dart';

class PosCheckoutView extends StatefulWidget {
  const PosCheckoutView({Key? key}) : super(key: key);

  @override
  State<PosCheckoutView> createState() => _PosCheckoutViewState();
}

class _PosCheckoutViewState extends State<PosCheckoutView> {
  PosCheckoutController controller = PosCheckoutController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<PosCheckoutController>()) {
      GetIt.I.unregister<PosCheckoutController>();
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
      child: BlocListener<PosCheckoutController, PosCheckoutState>(
        listener: (context, state) {},
        child: BlocBuilder<PosCheckoutController, PosCheckoutState>(
          builder: (context, state) {
            final bloc = context.read<PosCheckoutController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    PosCheckoutController controller,
    PosCheckoutState state,
  ) {
    var posController = GetIt.I<PosController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('PosCheckout'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: posController.state.products.length,
              physics: const ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                var item = posController.state.products[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 8.0,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "${item.productName}",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Spacer(),
                          Container(
                            width: 100.0,
                            child: Text(
                              "${item.qty} x ${NumberFormat().format(item.price)}",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                          Container(
                            width: 100.0,
                            child: Text(
                              "${NumberFormat().format(item.qty! * item.price!)}",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Total",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "${NumberFormat().format(posController.total)}",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                QRadioField(
                  label: "Payment method",
                  validator: Validator.atLeastOneitem,
                  items: [
                    {
                      "label": "Cash",
                      "value": "Cash",
                    },
                    {
                      "label": "QRIS/Credit/Debit",
                      "value": "Qris",
                    }
                  ],
                  value: state.paymentMethod,
                  onChanged: (value, label) {
                    state.paymentMethod = value;
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: QActionButton(
        label: "Pay",
        onPressed: () {
          if (state.paymentMethod == "Cash") {
            Get.to(PosPaymentCashView());
          } else {
            Get.to(PosPaymentView());
          }
        },
      ),
    );
  }
}
