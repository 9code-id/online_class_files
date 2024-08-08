import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';
import '../view/stack_exercise_view.dart';

class StackExerciseController extends State<StackExerciseView> {
  static late StackExerciseController instance;
  late StackExerciseView view;

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
