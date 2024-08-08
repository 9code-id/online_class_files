import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/nav_tabbar_view.dart';

class NavTabbarController extends State<NavTabbarView> {
  static late NavTabbarController instance;
  late NavTabbarView view;

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
