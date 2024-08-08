import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/sf_drawer_controller.dart';

class SfDrawerView extends StatefulWidget {
  const SfDrawerView({Key? key}) : super(key: key);

  Widget build(context, SfDrawerController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("SfDrawer"),
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
  State<SfDrawerView> createState() => SfDrawerController();
}
