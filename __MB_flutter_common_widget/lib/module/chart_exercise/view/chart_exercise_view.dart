import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';
import '../controller/chart_exercise_controller.dart';

class ChartExerciseView extends StatefulWidget {
  const ChartExerciseView({Key? key}) : super(key: key);

  Widget build(context, ChartExerciseController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ChartExercise"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: const Column(
            children: [
              /*
              1. Buatlah Chart
              snippet: chart_line
              */

              /*
              2. Buatlah Chart
              snippet: chart_simple_line
              */
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ChartExerciseView> createState() => ChartExerciseController();
}
