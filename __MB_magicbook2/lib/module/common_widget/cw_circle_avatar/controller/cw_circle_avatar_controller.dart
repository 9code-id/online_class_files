import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/cw_circle_avatar_view.dart';

class CwCircleAvatarController extends State<CwCircleAvatarView> {
  static late CwCircleAvatarController instance;
  late CwCircleAvatarView view;

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
