import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/cw_button_controller.dart';

class CwButtonView extends StatefulWidget {
  const CwButtonView({Key? key}) : super(key: key);

  Widget build(context, CwButtonController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CwButton"),
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
  State<CwButtonView> createState() => CwButtonController();
}
