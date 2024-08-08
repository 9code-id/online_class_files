import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/lo_column_view.dart';

class LoColumnController extends State<LoColumnView> {
  static late LoColumnController instance;
  late LoColumnView view;

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
