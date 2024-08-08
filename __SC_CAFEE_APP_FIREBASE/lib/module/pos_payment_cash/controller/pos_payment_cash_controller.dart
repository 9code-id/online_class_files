import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/core.dart';
import '../state/pos_payment_cash_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class PosPaymentCashController extends Cubit<PosPaymentCashState>
    implements IBlocBase {
  PosPaymentCashController() : super(PosPaymentCashState());

  @override
  void initState() {
    //initState event
  }

  @override
  void dispose() {
    //dispose event
  }

  @override
  void ready() {
    //ready event
  }

  increment() {
    state.counter++;
    emit(state.copyWith());
  }

  updateAmount(double amount) {
    state.amount = amount;
    emit(state.copyWith());
  }

  processPayment() async {
    PosController posController = GetIt.I<PosController>();
    OrderService().create(
      products: posController.state.products,
      total: posController.total,
      amount: state.amount,
      returnAmount: state.amount - posController.total,
      paymentMethod: "Cash",
      status: "Paid",
    );
  }
}
