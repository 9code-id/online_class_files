import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';
import '../controller/map_exercise_controller.dart';

class MapExerciseView extends StatefulWidget {
  const MapExerciseView({Key? key}) : super(key: key);

  Widget build(context, MapExerciseController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("MapExercise"),
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
  State<MapExerciseView> createState() => MapExerciseController();
}
