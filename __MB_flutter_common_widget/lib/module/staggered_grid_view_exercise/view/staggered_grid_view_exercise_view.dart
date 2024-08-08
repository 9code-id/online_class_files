import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';
import '../controller/staggered_grid_view_exercise_controller.dart';

class StaggeredGridViewExerciseView extends StatefulWidget {
  const StaggeredGridViewExerciseView({Key? key}) : super(key: key);

  Widget build(context, StaggeredGridViewExerciseController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("StaggeredGridViewExercise"),
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
  State<StaggeredGridViewExerciseView> createState() =>
      StaggeredGridViewExerciseController();
}
