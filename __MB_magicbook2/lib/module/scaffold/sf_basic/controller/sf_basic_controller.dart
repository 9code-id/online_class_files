import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/sf_basic_view.dart';

class SfBasicController extends State<SfBasicView> {
  static late SfBasicController instance;
  late SfBasicView view;

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
