import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/sf_drawer_view.dart';

class SfDrawerController extends State<SfDrawerView> {
  static late SfDrawerController instance;
  late SfDrawerView view;

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
