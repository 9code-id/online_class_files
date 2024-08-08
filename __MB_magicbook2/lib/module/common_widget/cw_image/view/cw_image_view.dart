import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/cw_image_controller.dart';

class CwImageView extends StatefulWidget {
  const CwImageView({Key? key}) : super(key: key);

  Widget build(context, CwImageController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CwImage"),
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
  State<CwImageView> createState() => CwImageController();
}
