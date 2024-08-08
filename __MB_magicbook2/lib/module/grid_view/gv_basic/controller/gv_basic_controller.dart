import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/gv_basic_view.dart';

class GvBasicController extends State<GvBasicView> {
  static late GvBasicController instance;
  late GvBasicView view;

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
