
import 'package:freezed_annotation/freezed_annotation.dart';
part 'pos_print_preview_state.freezed.dart';

@unfreezed
class PosPrintPreviewState with _$PosPrintPreviewState {
  factory PosPrintPreviewState({
    @Default(0) int counter,
  }) = _PosPrintPreviewState;
}
    
    