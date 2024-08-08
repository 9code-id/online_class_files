import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/nav_tabbar_controller.dart';

class NavTabbarView extends StatefulWidget {
  const NavTabbarView({Key? key}) : super(key: key);

  Widget build(context, NavTabbarController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("NavTabbar"),
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
  State<NavTabbarView> createState() => NavTabbarController();
}
