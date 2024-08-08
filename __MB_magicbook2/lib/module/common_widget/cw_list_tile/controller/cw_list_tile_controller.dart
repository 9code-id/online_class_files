import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/cw_list_tile_view.dart';

class CwListTileController extends State<CwListTileView> {
  static late CwListTileController instance;
  late CwListTileView view;

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
