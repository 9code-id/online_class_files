import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/fm_product_form_view.dart';

class FmProductFormController extends State<FmProductFormView> {
  static late FmProductFormController instance;
  late FmProductFormView view;

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
