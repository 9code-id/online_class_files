import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fm_customer_form_controller.dart';

class FmCustomerFormView extends StatefulWidget {
  const FmCustomerFormView({Key? key}) : super(key: key);

  Widget build(context, FmCustomerFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FmCustomerForm"),
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
  State<FmCustomerFormView> createState() => FmCustomerFormController();
}
