import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hyper_ui/model/product/product.dart';
import 'package:hyper_ui/service/auth_service/auth_service.dart';
import 'package:uuid/uuid.dart';

class OrderService {
  Future<bool> create({
    required List<Product> products,
    required double total,
    required String paymentMethod,
    required String status,
    String? orderId,
    double? amount = 0,
    double? returnAmount = 0,
  }) async {
    try {
      String uid = Uuid().v4();
      await FirebaseFirestore.instance
          .collection("orders")
          .doc(orderId ?? uid)
          .set({
        "owner_id": user!.uid,
        "items": products.map((e) => e.toJson()),
        "total": total,
        "amount": amount,
        "return_amount": returnAmount,
        "status": status,
        "payment_method": paymentMethod,
        "created_at": Timestamp.now(),
      });
      return true;
    } on Exception catch (_) {
      return false;
    }
  }
}
