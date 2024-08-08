import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/fm_supplier_form_view.dart';

class FmSupplierFormController extends State<FmSupplierFormView> {
  static late FmSupplierFormController instance;
  late FmSupplierFormView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
