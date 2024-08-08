import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/gv_row_view.dart';

class GvRowController extends State<GvRowView> {
  static late GvRowController instance;
  late GvRowView view;

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
