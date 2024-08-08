import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/cw_text_view.dart';

class CwTextController extends State<CwTextView> {
  static late CwTextController instance;
  late CwTextView view;

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
