import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/lo_wrap_view.dart';

class LoWrapController extends State<LoWrapView> {
  static late LoWrapController instance;
  late LoWrapView view;

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
