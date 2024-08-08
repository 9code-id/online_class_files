import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';
import '../controller/stack_exercise_controller.dart';

class StackExerciseView extends StatefulWidget {
  const StackExerciseView({Key? key}) : super(key: key);

  Widget build(context, StackExerciseController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("StackExercise"),
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
  State<StackExerciseView> createState() => StackExerciseController();
}
