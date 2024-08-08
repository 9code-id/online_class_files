import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/model/product/product.dart';
import 'package:hyper_ui/service/auth_service/auth_service.dart';
import 'package:hyper_ui/service/product_service/product_service.dart';
import 'package:uuid/uuid.dart';
import '../state/product_crud_form_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class ProductCrudFormController extends Cubit<ProductCrudFormState>
    implements IBlocBase {
  ProductCrudFormController() : super(ProductCrudFormState());

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

  setEditMode(Product? product) {
    if (product == null) return;

    state.isEditMode = true;
    state.id = product.id;
    state.photo = product.photo;
    state.productName = product.productName;
    state.productCategory = product.productCategory;
    state.price = product.price;
    state.stock = product.stock;
    state.description = product.description;
  }

  Future<bool> save() async {
    if (state.isEditMode) {
      return await ProductService().update(
        state.id!,
        Product(
          ownerId: user!.uid,
          id: state.id,
          photo: state.photo,
          productName: state.productName,
          productCategory: state.productCategory,
          price: state.price,
          stock: state.stock,
          description: state.description,
        ),
      );
    } else {
      var id = Uuid().v4();
      return await ProductService().create(
        id,
        Product(
          ownerId: user!.uid,
          id: id,
          photo: state.photo,
          productName: state.productName,
          productCategory: state.productCategory,
          price: state.price,
          stock: state.stock,
          description: state.description,
        ),
      );
    }
  }
}
