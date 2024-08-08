import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fm_login_controller.dart';

class FmLoginView extends StatefulWidget {
  const FmLoginView({Key? key}) : super(key: key);

  Widget build(context, FmLoginController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FmLogin"),
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
  State<FmLoginView> createState() => FmLoginController();
}
