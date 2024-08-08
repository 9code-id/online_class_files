import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';
import '../view/list_view_exercise_view.dart';

class ListViewExerciseController extends State<ListViewExerciseView> {
  static late ListViewExerciseController instance;
  late ListViewExerciseView view;

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
