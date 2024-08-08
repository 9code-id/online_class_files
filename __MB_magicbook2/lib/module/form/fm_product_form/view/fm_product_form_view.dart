import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fm_product_form_controller.dart';

class FmProductFormView extends StatefulWidget {
  const FmProductFormView({Key? key}) : super(key: key);

  Widget build(context, FmProductFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FmProductForm"),
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
  State<FmProductFormView> createState() => FmProductFormController();
}
