import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/ct_pie_view.dart';

class CtPieController extends State<CtPieView> {
  static late CtPieController instance;
  late CtPieView view;

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
