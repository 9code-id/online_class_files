import 'package:flutter/material.dart';
import 'package:sui/core.dart';
import '../view/login_view.dart';

class LoginController extends State<LoginView> {
  static late LoginController instance;
  late LoginView view;

  @override
  void initState() {
    instance = this;
    // Future.delayed(const Duration(milliseconds: 500), () {
    //   focusNode.requestFocus();
    // });
    WidgetsBinding.instance.addPostFrameCallback((_) => onReady());
    super.initState();
  }

  onReady() {
    focusNode.requestFocus();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  FocusNode focusNode = FocusNode();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
}
