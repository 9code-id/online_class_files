import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';
import '../controller/row_exercise_controller.dart';

class RowExerciseView extends StatefulWidget {
  const RowExerciseView({Key? key}) : super(key: key);

  Widget build(context, RowExerciseController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("RowExercise"),
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
  State<RowExerciseView> createState() => RowExerciseController();
}
