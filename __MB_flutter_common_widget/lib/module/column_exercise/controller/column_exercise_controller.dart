import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';
import '../view/column_exercise_view.dart';

class ColumnExerciseController extends State<ColumnExerciseView> {
  static late ColumnExerciseController instance;
  late ColumnExerciseView view;

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
