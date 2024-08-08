import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ct_spline_controller.dart';

class CtSplineView extends StatefulWidget {
  const CtSplineView({Key? key}) : super(key: key);

  Widget build(context, CtSplineController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CtSpline"),
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
  State<CtSplineView> createState() => CtSplineController();
}
