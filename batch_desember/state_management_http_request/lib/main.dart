import 'package:hyper_ui/contoh.dart';
import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/user_list.dart';

//State Management
// StatelessWidget

// StatefulWidget
// ValuelistenableBuilder
// StreamBuilder

/*
State = Informasi | Data | Status | Kondisi
*/

/*
Indikator
- Kita mau halamannya itu ke refresh atau di rebuild ulang
*/

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Diointerceptors.init();
  runMainApp();
}

runMainApp() async {
  return runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      Navigator.of(context).pushReplacementNamed('/profile');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Capek Ngoding',
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: getDefaultTheme(),
      home: UserListView(),
      onGenerateRoute: (routeSettings) {
        print(routeSettings.name);
        return null;
      },
      builder: (context, child) {
        print(Get.currentContext.toString());
        return DebugView(
          context: context,
          child: child,
          visible: true,
        );
      },
    );
  }
}
