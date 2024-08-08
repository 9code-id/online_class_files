import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/lv_cart_controller.dart';

class LvCartView extends StatefulWidget {
  const LvCartView({Key? key}) : super(key: key);

  Widget build(context, LvCartController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LvCart"),
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
  State<LvCartView> createState() => LvCartController();
}
