import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: Get.navigatorKey,
      theme: ThemeData.light(),
      home: const DashboardView(),
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return Column(
          children: [
            Expanded(
              child: child!,
            ),
            Material(
              child: Container(
                padding: const EdgeInsets.all(12.0),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
                child: const Text(
                  "Join Kelas?\ncapekngoding.com",
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
