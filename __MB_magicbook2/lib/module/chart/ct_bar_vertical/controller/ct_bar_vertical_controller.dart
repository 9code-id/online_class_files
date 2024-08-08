import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/ct_bar_vertical_view.dart';

class CtBarVerticalController extends State<CtBarVerticalView> {
  static late CtBarVerticalController instance;
  late CtBarVerticalView view;

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
