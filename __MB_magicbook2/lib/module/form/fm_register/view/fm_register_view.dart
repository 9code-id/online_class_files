import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fm_register_controller.dart';

class FmRegisterView extends StatefulWidget {
  const FmRegisterView({Key? key}) : super(key: key);

  Widget build(context, FmRegisterController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FmRegister"),
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
  State<FmRegisterView> createState() => FmRegisterController();
}
