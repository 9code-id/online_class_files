import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ct_area_controller.dart';

class CtAreaView extends StatefulWidget {
  const CtAreaView({Key? key}) : super(key: key);

  Widget build(context, CtAreaController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CtArea"),
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
  State<CtAreaView> createState() => CtAreaController();
}
