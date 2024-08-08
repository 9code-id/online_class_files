import 'package:hyper_ui/module/dashboard/view/dashboard_app_view.dart';
import 'package:hyper_ui/module/dashboard/view/dashboard_http_request_view.dart';
import 'package:hyper_ui/module/dashboard/view/dashboard_local_storage_view.dart';
import 'package:hyper_ui/module/dashboard/view/dashboard_mini_apps_view.dart';
import 'package:hyper_ui/module/dashboard/view/dashboard_state_management_view.dart';
import 'package:hyper_ui/module/dashboard/view/dashboard_ui_view.dart';
import 'package:hyper_ui/module/dashboard/widget/dashboard_grid_menu.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class DashboardView extends StatefulWidget {
  DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    DashboardService dashboardService = DashboardService();

    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                text: "Basic",
              ),
              Tab(
                text: "View",
              ),
              Tab(
                text: "State Management",
              ),
              Tab(
                text: "HTTP Request",
              ),
              Tab(
                text: "Local Storage",
              ),
              Tab(
                text: "Mini Apps",
              ),
            ],
          ),
          title: const Text('Order List'),
        ),
        body: TabBarView(
          children: [
            DashboardUIView(),
            DashboardAppView(),
            DashboardStateManagementView(),
            DashboardHTTPRequestView(),
            DashboardLocalStorageView(),
            DashboardMiniAppsView(),
          ],
        ),
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
