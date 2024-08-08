import 'package:flutter/material.dart';
import 'package:sui/core.dart';
import 'package:sui/module/checkout/widget/checkout_option.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({Key? key}) : super(key: key);

  Widget build(context, CheckoutController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkout"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text("Cart Items"),
              ),
              ListView.builder(
                itemCount: controller.products.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.products[index];
                  double total = double.parse(item["qty"].toString()) *
                      double.parse(item["price"].toString());
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      backgroundImage: NetworkImage(
                        item["photo"],
                      ),
                    ),
                    title: Text(item["product_name"]),
                    subtitle:
                        Text("QTY: ${item["qty"]}   Price: \$${item["price"]}"),
                    trailing: Text("\$$total"),
                  );
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              const CheckoutOption(
                title: "Shipping Address",
                subtitle1: "Rumah",
                subtitle2: "Jln. XXX No. 45",
              ),
              const CheckoutOption(
                title: "Shipping Method",
                subtitle1: "JNE - YES",
              ),
              const CheckoutOption(
                title: "Payment",
                subtitle1: "MasterCard *** 4910",
              ),
              const CheckoutOption(
                title: "Promo code",
                subtitle1: "no promo code",
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 1.0,
              color: Colors.grey[400]!,
            ),
          ),
        ),
        padding: const EdgeInsets.all(20.0),
        child: Wrap(
          children: [
            const Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Subtotal: \$214",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        "Shipping: \$24",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        "Tax: 10%",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        "Promocode: 50% off",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        "\$109.44",
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 20.0,
            ),
            QButton(
              label: "Confirm",
              onPressed: () async {},
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<CheckoutView> createState() => CheckoutController();
}
