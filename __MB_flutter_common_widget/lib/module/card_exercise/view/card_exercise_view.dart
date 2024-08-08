import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';
import '../controller/card_exercise_controller.dart';

class CardExerciseView extends StatefulWidget {
  const CardExerciseView({Key? key}) : super(key: key);

  Widget build(context, CardExerciseController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CardExercise"),
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
  State<CardExerciseView> createState() => CardExerciseController();
}
