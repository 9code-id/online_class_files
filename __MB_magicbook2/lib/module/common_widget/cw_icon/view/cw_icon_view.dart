import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/cw_icon_controller.dart';

class CwIconView extends StatefulWidget {
  const CwIconView({Key? key}) : super(key: key);

  Widget build(context, CwIconController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CwIcon"),
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
  State<CwIconView> createState() => CwIconController();
}
