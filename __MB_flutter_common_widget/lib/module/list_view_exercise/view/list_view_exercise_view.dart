import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';
import '../controller/list_view_exercise_controller.dart';

class ListViewExerciseView extends StatefulWidget {
  const ListViewExerciseView({Key? key}) : super(key: key);

  Widget build(context, ListViewExerciseController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ListViewExercise"),
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
  State<ListViewExerciseView> createState() => ListViewExerciseController();
}
