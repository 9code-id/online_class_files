import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';
import '../controller/column_exercise_controller.dart';

class ColumnExerciseView extends StatefulWidget {
  const ColumnExerciseView({Key? key}) : super(key: key);

  Widget build(context, ColumnExerciseController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ColumnExercise"),
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
  State<ColumnExerciseView> createState() => ColumnExerciseController();
}
