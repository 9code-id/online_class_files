import 'package:freezed_annotation/freezed_annotation.dart';
part 'pos_payment_cash_state.freezed.dart';

@unfreezed
class PosPaymentCashState with _$PosPaymentCashState {
  factory PosPaymentCashState({
    @Default(0) int counter,
    @Default(0) double amount,
  }) = _PosPaymentCashState;
}
