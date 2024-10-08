import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';
import '../controller/wrap_exercise_controller.dart';

class WrapExerciseView extends StatefulWidget {
  const WrapExerciseView({Key? key}) : super(key: key);

  Widget build(context, WrapExerciseController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("WrapExercise"),
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
  State<WrapExerciseView> createState() => WrapExerciseController();
}
