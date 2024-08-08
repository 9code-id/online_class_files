import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';
import '../controller/icon_exercise_controller.dart';

class IconExerciseView extends StatefulWidget {
  const IconExerciseView({Key? key}) : super(key: key);

  Widget build(context, IconExerciseController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("IconExercise"),
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
  State<IconExerciseView> createState() => IconExerciseController();
}
