import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/ct_bubble_view.dart';

class CtBubbleController extends State<CtBubbleView> {
  static late CtBubbleController instance;
  late CtBubbleView view;

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
