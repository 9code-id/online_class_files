import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/fm_login_view.dart';

class FmLoginController extends State<FmLoginView> {
  static late FmLoginController instance;
  late FmLoginView view;

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
