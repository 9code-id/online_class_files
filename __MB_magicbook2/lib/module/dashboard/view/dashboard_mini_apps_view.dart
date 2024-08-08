// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class DashboardMiniAppsView extends StatelessWidget {
  const DashboardMiniAppsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DashboardService dashboardService = DashboardService();

    return SingleChildScrollView(
      controller: ScrollController(),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            H1(title: "Mini Apps"),
            H6(title: "Blog Apps"),
            DashboardGridMenu(
              items: dashboardService.miniAppsBlog,
            ),
            H6(title: "POS"),
            DashboardGridMenu(
              items: dashboardService.miniAppsBlog,
            ),
            H6(title: "Ecommerce"),
            DashboardGridMenu(
              items: dashboardService.miniAppsBlog,
            ),
            H6(title: "Doctor Appointment"),
            DashboardGridMenu(
              items: dashboardService.miniAppsBlog,
            ),
            H6(title: "Antrian"),
            DashboardGridMenu(
              items: dashboardService.miniAppsBlog,
            ),
            H6(title: "Absensi Online"),
            DashboardGridMenu(
              items: dashboardService.miniAppsBlog,
            ),
          ],
        ),
      ),
    );
  }
}
