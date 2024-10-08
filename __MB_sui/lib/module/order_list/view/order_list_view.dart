import 'package:flutter/material.dart';
import 'package:sui/core.dart';
import 'package:sui/module/order_list/widget/order_list_delivered_items.dart';
import 'package:sui/module/order_list/widget/order_list_pending_item.dart';
import 'package:sui/module/order_list/widget/order_list_shipped_items.dart';
import '../controller/order_list_controller.dart';

class OrderListView extends StatefulWidget {
  const OrderListView({Key? key}) : super(key: key);

  Widget build(context, OrderListController controller) {
    controller.view = this;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Pending",
              ),
              Tab(
                text: "Shipped",
              ),
              Tab(
                text: "Delivered",
              ),
            ],
          ),
          title: const Text('Order List'),
        ),
        body: TabBarView(
          children: [
            OrderListPendingItems(
              items: controller.pendingOrderItems,
            ),
            OrderListShippedItems(
              items: controller.shippedOrderItems,
            ),
            OrderListDeliveredItems(
              items: controller.deliveredOrderItems,
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<OrderListView> createState() => OrderListController();
}
