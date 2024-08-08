import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/cw_container_view.dart';

class CwContainerController extends State<CwContainerView> {
  static late CwContainerController instance;
  late CwContainerView view;

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
