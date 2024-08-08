import 'package:freezed_annotation/freezed_annotation.dart';
part 'pos_checkout_state.freezed.dart';

@unfreezed
class PosCheckoutState with _$PosCheckoutState {
  factory PosCheckoutState({
    @Default(0) int counter,
    @Default("Cash") String paymentMethod,
  }) = _PosCheckoutState;
}
