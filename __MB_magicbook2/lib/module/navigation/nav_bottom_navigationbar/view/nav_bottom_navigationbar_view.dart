import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/nav_bottom_navigationbar_controller.dart';

class NavBottomNavigationbarView extends StatefulWidget {
  const NavBottomNavigationbarView({Key? key}) : super(key: key);

  Widget build(context, NavBottomNavigationbarController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("NavBottomNavigationbar"),
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
  State<NavBottomNavigationbarView> createState() =>
      NavBottomNavigationbarController();
}
