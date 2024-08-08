import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';
import '../view/card_exercise_view.dart';

class CardExerciseController extends State<CardExerciseView> {
  static late CardExerciseController instance;
  late CardExerciseView view;

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
