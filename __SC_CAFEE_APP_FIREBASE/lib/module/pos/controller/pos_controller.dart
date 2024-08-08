import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/model/product/product.dart';
import 'package:hyper_ui/service/product_service/product_service.dart';
import '../state/pos_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class PosController extends Cubit<PosState> implements IBlocBase {
  PosController() : super(PosState());

  @override
  void initState() {
    //initState event
    getProducts();
  }

  @override
  void dispose() {
    //dispose event
  }

  @override
  void ready() {
    //ready event
  }

  Future getProducts() async {
    state.products = await ProductService().get();
    for (var product in state.products) {
      product.qty ??= 0;
    }
    emit(state.copyWith());
  }

  increaseQty(Product product) {
    if (product.stock == 0) return;
    if (product.qty! == product.stock) return;
    product.qty = product.qty! + 1;
    emit(state.copyWith());
  }

  decreaseQty(Product product) {
    if (product.qty == 0) return;
    product.qty = product.qty! - 1;
    print(product.qty);
    emit(state.copyWith());
  }

  emptyQty(Product product) {
    product.qty = 0;
    emit(state.copyWith());
  }

  double get total {
    double itemTotal = 0;
    for (var product in state.products) {
      itemTotal += product.qty! * product.price!;
    }
    return itemTotal;
  }

  updateSearch(String value) {
    state.search = value;
    emit(state.copyWith());
  }

  updateCategory(String? value) {
    state.categoryName = value;
    emit(state.copyWith());
  }

  reset() {
    state.search = "";
    state.categoryName = null;
    emit(state.copyWith());
  }

  updateMode() {
    state.gridMode = !state.gridMode;
    emit(state.copyWith());
  }
}
