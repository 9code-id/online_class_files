import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/lv_row_view.dart';

class LvRowController extends State<LvRowView> {
  static late LvRowController instance;
  late LvRowView view;

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
