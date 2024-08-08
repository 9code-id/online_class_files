import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';
import '../view/row_exercise_view.dart';

class RowExerciseController extends State<RowExerciseView> {
  static late RowExerciseController instance;
  late RowExerciseView view;

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
