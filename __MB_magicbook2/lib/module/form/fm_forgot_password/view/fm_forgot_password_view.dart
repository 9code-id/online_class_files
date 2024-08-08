import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fm_forgot_password_controller.dart';

class FmForgotPasswordView extends StatefulWidget {
  const FmForgotPasswordView({Key? key}) : super(key: key);

  Widget build(context, FmForgotPasswordController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FmForgotPassword"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<FmForgotPasswordView> createState() => FmForgotPasswordController();
}
