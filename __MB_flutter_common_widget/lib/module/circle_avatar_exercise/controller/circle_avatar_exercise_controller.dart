import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';
import '../view/circle_avatar_exercise_view.dart';

class CircleAvatarExerciseController extends State<CircleAvatarExerciseView> {
  static late CircleAvatarExerciseController instance;
  late CircleAvatarExerciseView view;

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
