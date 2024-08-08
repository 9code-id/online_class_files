import 'package:sui/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  await LocalDataService().load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget mainView = const IntroView();

    if (LocalDataService().isFirstTime()) {
      mainView = const LoginView();
    }

    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: Get.navigatorKey,
      // theme: DarkTheme.getTheme(),
      theme: MainTheme.getTheme(),
      debugShowCheckedModeBanner: false,
      home: kDebugMode ? mainView : const SplashView(),
      builder: (context, child) {
        // bool isAdmin = false;
        // if (!isAdmin) {
        //   return const Scaffold(
        //     body: Center(
        //       child: Text(
        //         "Unahtorized Access",
        //         style: TextStyle(
        //           fontSize: 30,
        //           fontWeight: FontWeight.bold,
        //         ),
        //       ),
        //     ),
        //   );
        // }
        return child!;
      },
    );
  }
}
