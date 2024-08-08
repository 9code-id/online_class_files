import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fm_supplier_form_controller.dart';

class FmSupplierFormView extends StatefulWidget {
  const FmSupplierFormView({Key? key}) : super(key: key);

  Widget build(context, FmSupplierFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FmSupplierForm"),
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
  State<FmSupplierFormView> createState() => FmSupplierFormController();
}
