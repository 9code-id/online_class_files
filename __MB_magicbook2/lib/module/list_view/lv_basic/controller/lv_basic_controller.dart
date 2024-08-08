import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/lv_basic_view.dart';

class LvBasicController extends State<LvBasicView> {
  static late LvBasicController instance;
  late LvBasicView view;

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
