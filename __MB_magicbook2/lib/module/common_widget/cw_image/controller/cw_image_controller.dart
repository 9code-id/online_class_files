import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/cw_image_view.dart';

class CwImageController extends State<CwImageView> {
  static late CwImageController instance;
  late CwImageView view;

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
