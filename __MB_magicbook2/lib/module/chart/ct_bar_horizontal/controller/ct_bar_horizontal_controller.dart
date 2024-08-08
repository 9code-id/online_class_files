import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/ct_bar_horizontal_view.dart';

class CtBarHorizontalController extends State<CtBarHorizontalView> {
  static late CtBarHorizontalController instance;
  late CtBarHorizontalView view;

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
