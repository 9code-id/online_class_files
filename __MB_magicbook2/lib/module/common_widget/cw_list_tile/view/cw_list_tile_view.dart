import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/cw_list_tile_controller.dart';

class CwListTileView extends StatefulWidget {
  const CwListTileView({Key? key}) : super(key: key);

  Widget build(context, CwListTileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CwListTile"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<CwListTileView> createState() => CwListTileController();
}
