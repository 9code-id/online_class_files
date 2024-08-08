// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

//State Management
// StatelessWidget

// Non Observable State     (Update state-nya manual, harus memanggil setState)
// StatefulWidget

// Observable State  (Update state-nya terjadi otomatis ketika nilainya berubah)
// ValuelistenableBuilder + ValueNotifier
// StreamBuilder
//    Realtime Chat
//    Realtime value update
//        Aplikasi yang menampilkan KURS USD/IDR Realtime

//  StatefulWidget                  Bloc

/*
State = Informasi | Data | Status | Kondisi
*/

/*
Indikator
- Kita mau halamannya itu ke refresh atau di rebuild ulang


HTTP Requests
*/

class ContohView extends StatefulWidget {
  const ContohView({Key? key}) : super(key: key);

  @override
  State<ContohView> createState() => _ContohViewState();
}

class _ContohViewState extends State<ContohView> {
  int counter = 10;
  ValueNotifier<int> counter2 = ValueNotifier(0);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => onReady());
  }

  void onReady() {}

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(_) {
    super.didUpdateWidget(_);
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${counter}",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  counter++;
                  setState(() {});
                  // counter = counter + 1;
                  // counter += 1;
                  print("counter: $counter");
                },
                child: const Text("Add Counter"),
              ),
              Divider(),
              ValueListenableBuilder(
                valueListenable: counter2,
                builder: (context, child, value) {
                  return Text(
                    "${counter2.value}",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  );
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  counter2.value++;
                  print(counter2.value);
                },
                child: const Text("Add Counter"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
