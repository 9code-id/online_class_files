import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';
import '../controller/circle_avatar_exercise_controller.dart';

class CircleAvatarExerciseView extends StatefulWidget {
  const CircleAvatarExerciseView({Key? key}) : super(key: key);

  Widget build(context, CircleAvatarExerciseController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CircleAvatarExercise"),
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
  State<CircleAvatarExerciseView> createState() =>
      CircleAvatarExerciseController();
}
