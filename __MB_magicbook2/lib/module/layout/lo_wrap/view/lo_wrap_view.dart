import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/lo_wrap_controller.dart';

class LoWrapView extends StatefulWidget {
  const LoWrapView({Key? key}) : super(key: key);

  Widget build(context, LoWrapController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LoWrap"),
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
  State<LoWrapView> createState() => LoWrapController();
}
