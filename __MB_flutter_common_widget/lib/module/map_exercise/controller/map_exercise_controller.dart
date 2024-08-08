import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';
import '../view/map_exercise_view.dart';

class MapExerciseController extends State<MapExerciseView> {
  static late MapExerciseController instance;
  late MapExerciseView view;

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
