import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/gv_actions_controller.dart';

class GvActionsView extends StatefulWidget {
  const GvActionsView({Key? key}) : super(key: key);

  Widget build(context, GvActionsController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("GvActions"),
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
  State<GvActionsView> createState() => GvActionsController();
}
