import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/cw_button_view.dart';

class CwButtonController extends State<CwButtonView> {
  static late CwButtonController instance;
  late CwButtonView view;

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
