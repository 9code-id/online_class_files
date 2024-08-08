// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'module/data_manager/controller/data_manager_controller.dart' as _i3;
import 'module/edit_profile/controller/edit_profile_controller.dart' as _i4;
import 'module/login/controller/login_controller.dart' as _i5;
import 'module/pos/controller/pos_controller.dart' as _i7;
import 'module/pos_checkout/controller/pos_checkout_controller.dart' as _i6;
import 'module/pos_payment/controller/pos_payment_controller.dart' as _i9;
import 'module/pos_payment_cash/controller/pos_payment_cash_controller.dart'
    as _i8;
import 'module/pos_print_preview/controller/pos_print_preview_controller.dart'
    as _i10;
import 'module/product_category_crud_form/controller/product_category_crud_form_controller.dart'
    as _i11;
import 'module/product_category_crud_list/controller/product_category_crud_list_controller.dart'
    as _i12;
import 'module/product_crud_form/controller/product_crud_form_controller.dart'
    as _i13;
import 'module/product_crud_list/controller/product_crud_list_controller.dart'
    as _i14;
import 'module/register/controller/register_controller.dart' as _i15;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.DataManagerController>(_i3.DataManagerController());
    gh.singleton<_i4.EditProfileController>(_i4.EditProfileController());
    gh.singleton<_i5.LoginController>(_i5.LoginController());
    gh.singleton<_i6.PosCheckoutController>(_i6.PosCheckoutController());
    gh.singleton<_i7.PosController>(_i7.PosController());
    gh.singleton<_i8.PosPaymentCashController>(_i8.PosPaymentCashController());
    gh.singleton<_i9.PosPaymentController>(_i9.PosPaymentController());
    gh.singleton<_i10.PosPrintPreviewController>(
        _i10.PosPrintPreviewController());
    gh.singleton<_i11.ProductCategoryCrudFormController>(
        _i11.ProductCategoryCrudFormController());
    gh.singleton<_i12.ProductCategoryCrudListController>(
        _i12.ProductCategoryCrudListController());
    gh.singleton<_i13.ProductCrudFormController>(
        _i13.ProductCrudFormController());
    gh.singleton<_i14.ProductCrudListController>(
        _i14.ProductCrudListController());
    gh.singleton<_i15.RegisterController>(_i15.RegisterController());
    return this;
  }
}
