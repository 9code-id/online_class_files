import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sui/core.dart';
import 'package:sui/core/theme/theme_config.dart';
import '../../../core/widget/button/button.dart';
import '../../../core/widget/textfield/textfield.dart';
import '../controller/register_controller.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  Widget build(context, RegisterController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
        centerTitle: true,
        leading: Container(),
        leadingWidth: 0.0,
        actions: const [],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: ScrollController(),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Image.asset(
                    "asset/icon/icon.png",
                    width: 120.0,
                    height: 120.0,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  QTextField(
                    label: "Full Name",
                    onChanged: (value) {},
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  QTextField(
                    label: "Email",
                    onChanged: (value) {},
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  QTextField(
                    label: "Password",
                    onChanged: (value) {},
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  QButton(
                    label: "Create an Account",
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: '',
                      style: const TextStyle(),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'By signing up, you agree to our \n',
                          style: TextStyle(
                            color: disabledTextColor,
                          ),
                        ),
                        TextSpan(
                          text: 'Terms',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pop(context);
                            },
                        ),
                        TextSpan(
                          text: ' and ',
                          style: TextStyle(
                            color: disabledTextColor,
                          ),
                        ),
                        TextSpan(
                          text: 'Privacy',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pop(context);
                            },
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Center(
                      child: Text(
                        "I have an account",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Text(
                "I have an account",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  State<RegisterView> createState() => RegisterController();
}
