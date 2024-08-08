import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/ct_spline_view.dart';

class CtSplineController extends State<CtSplineView> {
  static late CtSplineController instance;
  late CtSplineView view;

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
