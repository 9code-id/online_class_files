import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';
import '../view/image_exercise_view.dart';

class ImageExerciseController extends State<ImageExerciseView> {
  static late ImageExerciseController instance;
  late ImageExerciseView view;

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
