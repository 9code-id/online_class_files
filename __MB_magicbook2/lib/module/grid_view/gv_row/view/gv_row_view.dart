import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/gv_row_controller.dart';

class GvRowView extends StatefulWidget {
  const GvRowView({Key? key}) : super(key: key);

  Widget build(context, GvRowController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("GvRow"),
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
  State<GvRowView> createState() => GvRowController();
}
