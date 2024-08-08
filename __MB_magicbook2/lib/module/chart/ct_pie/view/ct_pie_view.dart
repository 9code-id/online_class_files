import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ct_pie_controller.dart';

class CtPieView extends StatefulWidget {
  const CtPieView({Key? key}) : super(key: key);

  Widget build(context, CtPieController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CtPie"),
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
  State<CtPieView> createState() => CtPieController();
}
