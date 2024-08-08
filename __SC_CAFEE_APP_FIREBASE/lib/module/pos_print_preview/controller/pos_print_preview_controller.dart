
import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/pos_print_preview_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class PosPrintPreviewController extends Cubit<PosPrintPreviewState> implements IBlocBase {
  PosPrintPreviewController() : super(PosPrintPreviewState());

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
}
    
      
    