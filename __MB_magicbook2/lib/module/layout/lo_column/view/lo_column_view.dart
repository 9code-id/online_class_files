import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/lo_column_controller.dart';

class LoColumnView extends StatefulWidget {
  const LoColumnView({Key? key}) : super(key: key);

  Widget build(context, LoColumnController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LoColumn"),
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
  State<LoColumnView> createState() => LoColumnController();
}
