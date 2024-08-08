import 'package:flutter/material.dart';
import 'package:sui/core.dart';
import '../view/order_list_view.dart';

class OrderListController extends State<OrderListView> {
  static late OrderListController instance;
  late OrderListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<Map<String, dynamic>> orderList = [
    {
      "id": 123,
      "created_at": "2023-08-25 10:00:00",
      "shipping_address": {
        "name": "John Doe",
        "detail": "Jalan Raya No. 123, Kota ABC",
      },
      "courier": {
        "name": "JNE",
        "detail": "Regular Shipping",
      },
      "payment_method": {
        "name": "Credit Card",
        "detail": "Visa ending in 1234",
      },
      "items": [
        {"id": 1, "product_name": "Tas", "qty": 2, "price": 50.0},
        {"id": 2, "product_name": "Kursi", "qty": 3, "price": 150.0},
        {"id": 3, "product_name": "Meja", "qty": 1, "price": 200.0},
        {"id": 4, "product_name": "Laptop", "qty": 1, "price": 800.0},
        {"id": 5, "product_name": "HP", "qty": 2, "price": 300.0},
        {"id": 6, "product_name": "Mouse", "qty": 3, "price": 20.0},
        {"id": 7, "product_name": "Keyboard", "qty": 1, "price": 30.0},
        {"id": 8, "product_name": "Monitor", "qty": 2, "price": 250.0},
        {"id": 9, "product_name": "Speaker", "qty": 1, "price": 50.0},
        {"id": 10, "product_name": "Headset", "qty": 4, "price": 40.0},
      ],
      "total": 2940.0,
      "status": "Pending",
    },
    {
      "id": 124,
      "created_at": "2023-08-24 11:05:00",
      "shipping_address": {
        "name": "Jane Smith",
        "detail": "Jalan Harmoni No. 45, Kota DEF",
      },
      "courier": {
        "name": "JNT",
        "detail": "Express Shipping",
      },
      "payment_method": {
        "name": "Bank Transfer",
        "detail": "Bank XYZ",
      },
      "items": [
        {"id": 11, "product_name": "Camera", "qty": 1, "price": 500.0},
        {"id": 12, "product_name": "Tripod", "qty": 1, "price": 100.0},
      ],
      "total": 600.0,
      "status": "Shipped",
    },
    {
      "id": 1003,
      "created_at": "2023-08-23 12:15:00",
      "shipping_address": {
        "name": "Mike Thomas",
        "detail": "Jalan Sejahtera No. 12, Kota GHI",
      },
      "courier": {
        "name": "Tiki",
        "detail": "Overnight Shipping",
      },
      "payment_method": {
        "name": "E-Wallet",
        "detail": "OVO",
      },
      "items": [
        {"id": 20, "product_name": "Book", "qty": 5, "price": 15.0},
        {"id": 21, "product_name": "Pen", "qty": 10, "price": 2.0},
      ],
      "total": 95.0,
      "status": "Delivered",
    },

    // Order 1004
    {
      "id": 1004,
      "created_at": "2023-08-22 13:10:00",
      "shipping_address": {
        "name": "Sara Connor",
        "detail": "Jalan Damai No. 56, Kota JKL",
      },
      "courier": {
        "name": "SiCepat",
        "detail": "Same Day Shipping",
      },
      "payment_method": {
        "name": "Debit Card",
        "detail": "Mandiri",
      },
      "items": [
        {"id": 22, "product_name": "Lamp", "qty": 2, "price": 45.0},
      ],
      "total": 90.0,
      "status": "Processing",
    },
    {
      "id": 1005,
      "created_at": "2023-08-21 09:15:00",
      "shipping_address": {
        "name": "Alex Morgan",
        "detail": "Jalan Sunset No. 77, Kota MNO",
      },
      "courier": {
        "name": "Pos Indonesia",
        "detail": "Regular Mail",
      },
      "payment_method": {
        "name": "E-Wallet",
        "detail": "Dana",
      },
      "items": [
        {"id": 23, "product_name": "Chair", "qty": 4, "price": 55.0},
        {"id": 24, "product_name": "Desk", "qty": 1, "price": 100.0},
      ],
      "total": 320.0,
      "status": "Pending",
    },

    // Order 1006
    {
      "id": 1006,
      "created_at": "2023-08-20 15:20:00",
      "shipping_address": {
        "name": "Lucy Gray",
        "detail": "Jalan Sunrise No. 88, Kota PQR",
      },
      "courier": {
        "name": "Lion Parcel",
        "detail": "Two-Day Shipping",
      },
      "payment_method": {
        "name": "Credit Card",
        "detail": "MasterCard ending in 5678",
      },
      "items": [
        {"id": 25, "product_name": "Sofa", "qty": 1, "price": 500.0},
        {"id": 26, "product_name": "Table", "qty": 2, "price": 120.0},
      ],
      "total": 740.0,
      "status": "Shipped",
    },

    // Order 1007
    {
      "id": 1007,
      "created_at": "2023-08-19 10:25:00",
      "shipping_address": {
        "name": "Tom Brady",
        "detail": "Jalan Rainbow No. 11, Kota STU",
      },
      "courier": {
        "name": "Wahana",
        "detail": "Next Day Delivery",
      },
      "payment_method": {
        "name": "Bank Transfer",
        "detail": "BNI",
      },
      "items": [
        {"id": 27, "product_name": "Rug", "qty": 2, "price": 70.0},
        {"id": 28, "product_name": "Pillow", "qty": 4, "price": 25.0},
      ],
      "total": 270.0,
      "status": "Delivered",
    },

    // Order 1008
    {
      "id": 1008,
      "created_at": "2023-08-18 16:30:00",
      "shipping_address": {
        "name": "LeBron James",
        "detail": "Jalan Star No. 99, Kota VWX",
      },
      "courier": {
        "name": "GoSend",
        "detail": "Instant Delivery",
      },
      "payment_method": {
        "name": "E-Wallet",
        "detail": "LinkAja",
      },
      "items": [
        {"id": 29, "product_name": "Ball", "qty": 3, "price": 15.0},
        {"id": 30, "product_name": "Jersey", "qty": 1, "price": 80.0},
      ],
      "total": 125.0,
      "status": "Pending",
    },

    // Order 1009
    {
      "id": 1009,
      "created_at": "2023-08-17 11:35:00",
      "shipping_address": {
        "name": "Megan Rapinoe",
        "detail": "Jalan Comet No. 44, Kota YZA",
      },
      "courier": {
        "name": "J&T",
        "detail": "Express Shipping",
      },
      "payment_method": {
        "name": "Debit Card",
        "detail": "BCA",
      },
      "items": [
        {"id": 31, "product_name": "Shoes", "qty": 1, "price": 120.0},
        {"id": 32, "product_name": "Hat", "qty": 2, "price": 20.0},
      ],
      "total": 160.0,
      "status": "Processing",
    },

    // Order 1010
    {
      "id": 1010,
      "created_at": "2023-08-16 12:40:00",
      "shipping_address": {
        "name": "Serena Williams",
        "detail": "Jalan Planet No. 55, Kota ZZZ",
      },
      "courier": {
        "name": "Rex",
        "detail": "Three-Day Shipping",
      },
      "payment_method": {
        "name": "E-Wallet",
        "detail": "Gopay",
      },
      "items": [
        {"id": 33, "product_name": "Racket", "qty": 1, "price": 200.0},
        {"id": 34, "product_name": "Wristband", "qty": 3, "price": 10.0},
      ],
      "total": 230.0,
      "status": "Shipped",
    },
  ];
  List<Map<String, dynamic>> get pendingOrderItems {
    return orderList.where((i) => i["status"] == "Pending").toList();
  }

  List<Map<String, dynamic>> get shippedOrderItems {
    return orderList.where((i) => i["status"] == "Shipped").toList();
  }

  List<Map<String, dynamic>> get deliveredOrderItems {
    return orderList.where((i) => i["status"] == "Delivered").toList();
  }
}
