import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/fm_customer_form_view.dart';

class FmCustomerFormController extends State<FmCustomerFormView> {
  static late FmCustomerFormController instance;
  late FmCustomerFormView view;

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
