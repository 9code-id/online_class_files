// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class DashboardUIView extends StatelessWidget {
  const DashboardUIView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DashboardService dashboardService = DashboardService();

    return SingleChildScrollView(
      controller: ScrollController(),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            H1(title: "UI Basic"),
            H6(title: "Scaffold"),
            DashboardGridMenu(
              items: dashboardService.scaffolds,
            ),
            H6(title: "Basic"),
            DashboardGridMenu(
              items: dashboardService.commonWidgets,
            ),
            H6(title: "Layout"),
            DashboardGridMenu(
              items: dashboardService.layouts,
            ),
            H6(title: "Navigation"),
            DashboardGridMenu(
              items: dashboardService.navigations,
            ),
            H6(title: "ListView"),
            DashboardGridMenu(
              items: dashboardService.listViews,
            ),
            H6(title: "GridView"),
            DashboardGridMenu(
              items: dashboardService.gridViews,
            ),
            H6(title: "Forms"),
            DashboardGridMenu(
              items: dashboardService.forms,
            ),
            H6(title: "Charts"),
            DashboardGridMenu(
              items: dashboardService.charts,
            ),
          ],
        ),
      ),
    );
  }
}
