import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';
import '../view/chart_exercise_view.dart';

class ChartExerciseController extends State<ChartExerciseView> {
  static late ChartExerciseController instance;
  late ChartExerciseView view;

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
