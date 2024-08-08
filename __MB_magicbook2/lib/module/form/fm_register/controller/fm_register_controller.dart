import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/fm_register_view.dart';

class FmRegisterController extends State<FmRegisterView> {
  static late FmRegisterController instance;
  late FmRegisterView view;

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
