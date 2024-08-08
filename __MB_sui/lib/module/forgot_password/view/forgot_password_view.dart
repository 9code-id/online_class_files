import 'package:flutter/material.dart';
import 'package:sui/core.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  Widget build(context, ForgotPasswordController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ForgotPassword"),
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: QTextField(
                      label: "Number",
                      onChanged: (value) {},
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  SizedBox(
                    width: 100.0,
                    child: QButton(
                      label: "Send",
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12.0,
              ),
              QTextField(
                label: "OTP",
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Forgot password",
                disabled: true,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.all(12.0),
      //   child: QButton(
      //     label: "Forgot password",
      //     onPressed: () {},
      //   ),
      // ),
    );
  }

  @override
  State<ForgotPasswordView> createState() => ForgotPasswordController();
}
