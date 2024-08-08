import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/nav_bottom_navigationbar_view.dart';

class NavBottomNavigationbarController
    extends State<NavBottomNavigationbarView> {
  static late NavBottomNavigationbarController instance;
  late NavBottomNavigationbarView view;

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
