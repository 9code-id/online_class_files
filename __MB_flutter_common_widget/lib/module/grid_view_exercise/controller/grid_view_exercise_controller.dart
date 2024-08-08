import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';
import '../view/grid_view_exercise_view.dart';

class GridViewExerciseController extends State<GridViewExerciseView> {
  static late GridViewExerciseController instance;
  late GridViewExerciseView view;

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
