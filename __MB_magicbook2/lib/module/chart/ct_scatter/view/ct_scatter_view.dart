import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ct_scatter_controller.dart';

class CtScatterView extends StatefulWidget {
  const CtScatterView({Key? key}) : super(key: key);

  Widget build(context, CtScatterController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CtScatter"),
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
  State<CtScatterView> createState() => CtScatterController();
}
