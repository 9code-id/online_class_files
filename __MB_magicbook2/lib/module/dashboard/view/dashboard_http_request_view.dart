// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class DashboardHTTPRequestView extends StatelessWidget {
  const DashboardHTTPRequestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DashboardService dashboardService = DashboardService();

    return SingleChildScrollView(
      controller: ScrollController(),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            H1(title: "HTTP Request"),
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
