import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/lv_cart_view.dart';

class LvCartController extends State<LvCartView> {
  static late LvCartController instance;
  late LvCartView view;

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
