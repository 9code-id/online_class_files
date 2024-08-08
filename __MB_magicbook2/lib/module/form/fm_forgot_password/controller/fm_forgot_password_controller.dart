import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/fm_forgot_password_view.dart';

class FmForgotPasswordController extends State<FmForgotPasswordView> {
  static late FmForgotPasswordController instance;
  late FmForgotPasswordView view;

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
