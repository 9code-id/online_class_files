import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/lo_row_controller.dart';

class LoRowView extends StatefulWidget {
  const LoRowView({Key? key}) : super(key: key);

  Widget build(context, LoRowController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LoRow"),
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
  State<LoRowView> createState() => LoRowController();
}
