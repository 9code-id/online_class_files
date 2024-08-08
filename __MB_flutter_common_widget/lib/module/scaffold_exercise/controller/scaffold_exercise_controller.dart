import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';
import '../view/scaffold_exercise_view.dart';

class ScaffoldExerciseController extends State<ScaffoldExerciseView> {
  static late ScaffoldExerciseController instance;
  late ScaffoldExerciseView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
