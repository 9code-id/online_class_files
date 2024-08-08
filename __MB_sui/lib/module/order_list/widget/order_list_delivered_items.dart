// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../state_util.dart';
import '../../order_detail/view/order_detail_view.dart';

class OrderListDeliveredItems extends StatelessWidget {
  final List<Map<String, dynamic>> items;
  const OrderListDeliveredItems({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      padding: const EdgeInsets.all(12.0),
      physics: const ScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        var item = items[index];

        return InkWell(
          onTap: () => Get.to(OrderDetailView(
            item: item,
          )),
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1.0,
                  color: Colors.grey[300]!,
                ),
              ),
            ),
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "#${item["id"]}",
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        DateFormat("dd MMMM y kk:mm:ss")
                            .format(DateTime.parse(item["created_at"])),
                        style: const TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        "${item["payment_method"]["name"]}",
                        style: const TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        "${item["courier"]["name"]}",
                        style: const TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  "\$140",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        );
        return const ListTile(
          title: Text(
            "#1001",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Programmer"),
              Text("Programmer"),
              Text("Programmer"),
            ],
          ),
          trailing: Text(
            "\$140",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }
}
