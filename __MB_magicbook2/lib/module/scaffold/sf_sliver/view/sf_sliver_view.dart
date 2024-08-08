import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/sf_sliver_controller.dart';

class SfSliverView extends StatefulWidget {
  const SfSliverView({Key? key}) : super(key: key);

  Widget build(context, SfSliverController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("SfSliver"),
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
  State<SfSliverView> createState() => SfSliverController();
}
