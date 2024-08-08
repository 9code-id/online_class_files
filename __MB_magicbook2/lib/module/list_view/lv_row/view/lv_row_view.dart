import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/lv_row_controller.dart';

class LvRowView extends StatefulWidget {
  const LvRowView({Key? key}) : super(key: key);

  Widget build(context, LvRowController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LvRow"),
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
  State<LvRowView> createState() => LvRowController();
}
