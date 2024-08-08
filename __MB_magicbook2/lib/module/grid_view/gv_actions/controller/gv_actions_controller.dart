import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/gv_actions_view.dart';

class GvActionsController extends State<GvActionsView> {
  static late GvActionsController instance;
  late GvActionsView view;

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
