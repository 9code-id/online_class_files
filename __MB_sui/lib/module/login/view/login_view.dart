import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:sui/core.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: Form(
          key: controller.formKey,
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome",
                            style: GoogleFonts.robotoCondensed(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "to MagicBook",
                            style: GoogleFonts.robotoCondensed(
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "Write less do more",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      "asset/icon/icon.png",
                      width: 64.0,
                      height: 64.0,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
                const Spacer(),
                const SizedBox(
                  height: 12.0,
                ),
                QTextField(
                  label: "Email",
                  suffixIcon: Icons.visibility,
                  onSubmitted: (value) {},
                ),
                const SizedBox(
                  height: 12.0,
                ),
                QTextField(
                  label: "Password",
                  suffixIcon: Icons.visibility,
                  obscureText: true,
                  onSubmitted: (value) {},
                ),
                const SizedBox(
                  height: 20.0,
                ),
                QButton(
                  label: "Login",
                  onPressed: () {
                    bool isValid = controller.formKey.currentState!.validate();
                    if (!isValid) {
                      return;
                    }

                    Get.offAll(const MainNavigationView());
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap: () => Get.to(const ForgotPasswordView()),
                  child: Text(
                    "Forgot password",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
                  ),
                ),
                const Spacer(),
                QButton(
                  label: "Sign up",
                  color: disabledColor,
                  textColor: disabledTextColor,
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterView()),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
