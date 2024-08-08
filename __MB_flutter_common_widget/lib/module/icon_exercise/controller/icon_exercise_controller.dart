import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';
import '../view/icon_exercise_view.dart';

class IconExerciseController extends State<IconExerciseView> {
  static late IconExerciseController instance;
  late IconExerciseView view;

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
