import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/gv_cart_view.dart';

class GvCartController extends State<GvCartView> {
  static late GvCartController instance;
  late GvCartView view;

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
