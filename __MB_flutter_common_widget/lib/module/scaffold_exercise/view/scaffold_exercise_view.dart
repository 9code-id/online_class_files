import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';
import '../../../shared/widget/exercise_widget.dart';
import '../controller/scaffold_exercise_controller.dart';

class ScaffoldExerciseView extends StatefulWidget {
  const ScaffoldExerciseView({Key? key}) : super(key: key);

  Widget build(context, ScaffoldExerciseController controller) {
    controller.view = this;

    /*
    1. Buatlah Scaffold
    snippet: scaffold
    AppBar 
      title: Home
      actions: 
        icon_button (Icons.notifications),
        icon_button (Icons.inbox)

    2. Hapus return ExerciseWidget();
    */

    return const ExerciseWidget();
  }

  @override
  State<ScaffoldExerciseView> createState() => ScaffoldExerciseController();
}
