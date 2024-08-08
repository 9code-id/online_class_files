import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';
import '../view/staggered_grid_view_exercise_view.dart';

class StaggeredGridViewExerciseController
    extends State<StaggeredGridViewExerciseView> {
  static late StaggeredGridViewExerciseController instance;
  late StaggeredGridViewExerciseView view;

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
