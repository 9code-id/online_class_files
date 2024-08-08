import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/cw_icon_view.dart';

class CwIconController extends State<CwIconView> {
  static late CwIconController instance;
  late CwIconView view;

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
