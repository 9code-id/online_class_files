import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';
import '../controller/list_tile_exercise_controller.dart';

class ListTileExerciseView extends StatefulWidget {
  const ListTileExerciseView({Key? key}) : super(key: key);

  Widget build(context, ListTileExerciseController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ListTileExercise"),
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
  State<ListTileExerciseView> createState() => ListTileExerciseController();
}
