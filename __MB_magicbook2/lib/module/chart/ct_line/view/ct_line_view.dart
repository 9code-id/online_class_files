import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ct_line_controller.dart';

class CtLineView extends StatefulWidget {
  const CtLineView({Key? key}) : super(key: key);

  Widget build(context, CtLineController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CtLine"),
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
  State<CtLineView> createState() => CtLineController();
}
