import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ct_bubble_controller.dart';

class CtBubbleView extends StatefulWidget {
  const CtBubbleView({Key? key}) : super(key: key);

  Widget build(context, CtBubbleController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CtBubble"),
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
  State<CtBubbleView> createState() => CtBubbleController();
}
