import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';
import '../controller/image_exercise_controller.dart';

class ImageExerciseView extends StatefulWidget {
  const ImageExerciseView({Key? key}) : super(key: key);

  Widget build(context, ImageExerciseController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ImageExercise"),
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
  State<ImageExerciseView> createState() => ImageExerciseController();
}
