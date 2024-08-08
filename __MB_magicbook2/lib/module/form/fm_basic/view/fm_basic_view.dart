import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fm_basic_controller.dart';

class FmBasicView extends StatefulWidget {
  const FmBasicView({Key? key}) : super(key: key);

  Widget build(context, FmBasicController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FmBasic"),
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
  State<FmBasicView> createState() => FmBasicController();
}
