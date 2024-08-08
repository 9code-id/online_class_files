import 'package:dio/dio.dart';
import 'package:hyper_ui/model/product/product.dart';
import 'dart:convert';
import 'package:uuid/uuid.dart';

class PaymentService {
  Dio dio = Dio();

  Future<String?> createPaymentLink({
    required List<Product> products,
    required double total,
    required String orderId,
  }) async {
    var data = {
      "transaction_details": {
        "order_id": orderId,
        "gross_amount": total,
      },
      "credit_card": {
        "secure": true,
      }
    };

    try {
      print("Create paymment link");
      var response = await dio.post(
        'https://app.sandbox.midtrans.com/snap/v1/transactions',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization':
                'Basic U0ItTWlkLXNlcnZlci1vcEpaVkM4TGloazVwLXZHdHg2YUt5SFk6',
          },
        ),
        data: data,
      );
      print("Create paymment link Done!");
      return response.data["redirect_url"];
    } on Exception catch (error) {
      print(error);
      return null;
    }
  }
}
