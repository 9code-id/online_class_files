import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/lv_basic_controller.dart';

class LvBasicView extends StatefulWidget {
  const LvBasicView({Key? key}) : super(key: key);

  Widget build(context, LvBasicController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LvBasic"),
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
  State<LvBasicView> createState() => LvBasicController();
}
