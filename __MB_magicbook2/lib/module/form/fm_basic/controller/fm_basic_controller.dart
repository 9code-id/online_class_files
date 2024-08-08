import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/fm_basic_view.dart';

class FmBasicController extends State<FmBasicView> {
  static late FmBasicController instance;
  late FmBasicView view;

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
