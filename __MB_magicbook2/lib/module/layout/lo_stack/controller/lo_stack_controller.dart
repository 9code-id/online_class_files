import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/lo_stack_view.dart';

class LoStackController extends State<LoStackView> {
  static late LoStackController instance;
  late LoStackView view;

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
