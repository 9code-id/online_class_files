import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';
import '../view/list_tile_exercise_view.dart';

class ListTileExerciseController extends State<ListTileExerciseView> {
  static late ListTileExerciseController instance;
  late ListTileExerciseView view;

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
