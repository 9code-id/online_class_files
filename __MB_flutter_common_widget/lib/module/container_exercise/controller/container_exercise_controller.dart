import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';
import '../view/container_exercise_view.dart';

class ContainerExerciseController extends State<ContainerExerciseView> {
  static late ContainerExerciseController instance;
  late ContainerExerciseView view;

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
