import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/gv_basic_controller.dart';

class GvBasicView extends StatefulWidget {
  const GvBasicView({Key? key}) : super(key: key);

  Widget build(context, GvBasicController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("GvBasic"),
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
  State<GvBasicView> createState() => GvBasicController();
}
