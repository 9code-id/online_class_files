import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/cw_card_controller.dart';

class CwCardView extends StatefulWidget {
  const CwCardView({Key? key}) : super(key: key);

  Widget build(context, CwCardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CwCard"),
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
  State<CwCardView> createState() => CwCardController();
}
