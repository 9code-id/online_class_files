import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ct_bar_vertical_controller.dart';

class CtBarVerticalView extends StatefulWidget {
  const CtBarVerticalView({Key? key}) : super(key: key);

  Widget build(context, CtBarVerticalController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CtBarVertical"),
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
  State<CtBarVerticalView> createState() => CtBarVerticalController();
}
