import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/core.dart';
import 'package:injectable/injectable.dart';

@singleton
class PosPaymentController extends Cubit<PosPaymentState> implements IBlocBase {
  PosPaymentController() : super(PosPaymentState());

  @override
  void initState() {
    //initState event
    getPaymentLink();
  }

  @override
  void dispose() {
    //dispose event
  }

  @override
  void ready() {
    //ready event
  }

  String orderId = Uuid().v4();

  getPaymentLink() async {
    var posController = GetIt.I<PosController>();
    var products = posController.state.products;
    double total = posController.total;

    String? paymentUrl = await PaymentService().createPaymentLink(
      products: products,
      total: total,
      orderId: orderId,
    );

    if (paymentUrl != null) {
      state.paymentUrl = paymentUrl;
    }
    emit(state.copyWith());
  }

  Future<bool> createOrder() async {
    var posController = GetIt.I<PosController>();
    var products = posController.state.products;
    double total = posController.total;

    return await OrderService().create(
      orderId: orderId,
      products: products,
      total: total,
      paymentMethod: "Non Cash",
      status: "Payment success",
    );
  }
}
