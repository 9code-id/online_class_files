import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/ct_line_view.dart';

class CtLineController extends State<CtLineView> {
  static late CtLineController instance;
  late CtLineView view;

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
