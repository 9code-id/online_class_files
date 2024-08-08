import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';
import '../controller/grid_view_exercise_controller.dart';

class GridViewExerciseView extends StatefulWidget {
  const GridViewExerciseView({Key? key}) : super(key: key);

  Widget build(context, GridViewExerciseController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("GridViewExercise"),
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
  State<GridViewExerciseView> createState() => GridViewExerciseController();
}
