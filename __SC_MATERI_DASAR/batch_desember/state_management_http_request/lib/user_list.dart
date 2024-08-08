// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/shared/util/validator/validator.dart';
import 'package:hyper_ui/shared/widget/form/dropdown/dropdown.dart';

import 'shared/widget/form/textfield/text_field.dart';

class UserListView extends StatefulWidget {
  const UserListView({Key? key}) : super(key: key);

  @override
  State<UserListView> createState() => _UserListViewState();
}

class _UserListViewState extends State<UserListView> {
  List users = [];
  bool loading = true;

  Future getUsers() async {
    loading = true;
    setState(() {});

    // dio_get
    var response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    users = obj["data"];
    loading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Users"),
        actions: [
          IconButton(
            onPressed: () {
              getUsers();
            },
            icon: const Icon(
              Icons.refresh,
              size: 24.0,
            ),
          ),
        ],
      ),
      // body: loading
      //     ? Center(
      //         child: CircularProgressIndicator(),
      //       )
      //     : ListView.builder(
      //         itemCount: users.length,
      //         physics: const ScrollPhysics(),
      //         itemBuilder: (BuildContext context, int index) {
      //           var item = users[index];
      //           return Card(
      //             child: ListTile(
      //               leading: CircleAvatar(
      //                 backgroundColor: Colors.grey[200],
      //                 backgroundImage: NetworkImage(
      //                   item["avatar"],
      //                 ),
      //               ),
      //               title: Text(item["first_name"]),
      //               subtitle: Text(item["email"]),
      //             ),
      //           );
      //         },
      //       ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          //ALT+SHIFT+J
          SingleChildScrollView(
            controller: ScrollController(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(10, (index) {
                return Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
