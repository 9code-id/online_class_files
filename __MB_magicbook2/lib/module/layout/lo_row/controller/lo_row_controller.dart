import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/lo_row_view.dart';

class LoRowController extends State<LoRowView> {
  static late LoRowController instance;
  late LoRowView view;

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
