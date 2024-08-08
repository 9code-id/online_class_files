import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ecategory8_controller.dart';

class Ecategory8View extends StatefulWidget {
  const Ecategory8View({Key? key}) : super(key: key);

  Widget build(context, Ecategory8Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Ecategory8"),
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
  State<Ecategory8View> createState() => Ecategory8Controller();
}
