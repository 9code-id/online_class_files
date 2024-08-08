import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/lo_stack_controller.dart';

class LoStackView extends StatefulWidget {
  const LoStackView({Key? key}) : super(key: key);

  Widget build(context, LoStackController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LoStack"),
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
  State<LoStackView> createState() => LoStackController();
}
