import 'package:flutter/material.dart';
import 'package:sui/core.dart';
import 'package:sui/core/widget/textfield/passwordfield.dart';

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({Key? key}) : super(key: key);

  Widget build(context, ChangePasswordController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ChangePassword"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              QTextField(
                label: "Email",
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QPasswordField(
                label: "Password",
                obscureText: true,
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Change password",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ChangePasswordView> createState() => ChangePasswordController();
}
