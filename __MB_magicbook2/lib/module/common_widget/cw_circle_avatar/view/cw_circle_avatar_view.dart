import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/cw_circle_avatar_controller.dart';

class CwCircleAvatarView extends StatefulWidget {
  const CwCircleAvatarView({Key? key}) : super(key: key);

  Widget build(context, CwCircleAvatarController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CwCircleAvatar"),
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
  State<CwCircleAvatarView> createState() => CwCircleAvatarController();
}
