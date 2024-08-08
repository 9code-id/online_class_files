// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class DashboardLocalStorageView extends StatelessWidget {
  const DashboardLocalStorageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DashboardService dashboardService = DashboardService();

    return SingleChildScrollView(
      controller: ScrollController(),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            H1(title: "Local Storage"),
            H6(title: "Scaffold"),
            DashboardGridMenu(
              items: dashboardService.scaffolds,
            ),
          ],
        ),
      ),
    );
  }
}
