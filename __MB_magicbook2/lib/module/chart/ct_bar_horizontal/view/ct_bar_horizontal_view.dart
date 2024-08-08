import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ct_bar_horizontal_controller.dart';

class CtBarHorizontalView extends StatefulWidget {
  const CtBarHorizontalView({Key? key}) : super(key: key);

  Widget build(context, CtBarHorizontalController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CtBarHorizontal"),
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
  State<CtBarHorizontalView> createState() => CtBarHorizontalController();
}
