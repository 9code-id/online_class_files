import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/cw_text_controller.dart';

class CwTextView extends StatefulWidget {
  const CwTextView({Key? key}) : super(key: key);

  Widget build(context, CwTextController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CwText"),
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
  State<CwTextView> createState() => CwTextController();
}
