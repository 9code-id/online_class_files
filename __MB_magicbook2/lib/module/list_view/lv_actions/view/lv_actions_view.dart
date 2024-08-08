import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/lv_actions_controller.dart';

class LvActionsView extends StatefulWidget {
  const LvActionsView({Key? key}) : super(key: key);

  Widget build(context, LvActionsController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LvActions"),
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
  State<LvActionsView> createState() => LvActionsController();
}
