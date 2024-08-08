import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/cw_card_view.dart';

class CwCardController extends State<CwCardView> {
  static late CwCardController instance;
  late CwCardView view;

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
