// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class DashboardAppView extends StatelessWidget {
  const DashboardAppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DashboardService dashboardService = DashboardService();

    return SingleChildScrollView(
      controller: ScrollController(),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            H1(title: "App View"),
            H6(title: "Auth"),
            DashboardGridMenu(
              items: dashboardService.appViewsAuth,
            ),
            H6(title: "Dashboard"),
            DashboardGridMenu(
              items: dashboardService.appViewsDashboard,
            ),
            H6(title: "List"),
            DashboardGridMenu(
              items: dashboardService.appViewsList,
            ),
            H6(title: "Detail"),
            DashboardGridMenu(
              items: dashboardService.appViewsDetail,
            ),
            H6(title: "Category List"),
            DashboardGridMenu(
              items: dashboardService.appViewsCategories,
            ),
            H6(title: "Carts"),
            DashboardGridMenu(
              items: dashboardService.appViewsCarts,
            ),
          ],
        ),
      ),
    );
  }
}
