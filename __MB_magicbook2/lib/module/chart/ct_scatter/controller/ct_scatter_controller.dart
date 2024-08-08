import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/ct_scatter_view.dart';

class CtScatterController extends State<CtScatterView> {
  static late CtScatterController instance;
  late CtScatterView view;

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
