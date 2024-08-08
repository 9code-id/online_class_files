import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/cw_container_controller.dart';

class CwContainerView extends StatefulWidget {
  const CwContainerView({Key? key}) : super(key: key);

  Widget build(context, CwContainerController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CwContainer"),
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
  State<CwContainerView> createState() => CwContainerController();
}
