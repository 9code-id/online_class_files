import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/lv_actions_view.dart';

class LvActionsController extends State<LvActionsView> {
  static late LvActionsController instance;
  late LvActionsView view;

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
