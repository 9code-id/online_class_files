import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/sf_sliver_view.dart';

class SfSliverController extends State<SfSliverView> {
  static late SfSliverController instance;
  late SfSliverView view;

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
