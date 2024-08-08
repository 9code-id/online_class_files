import 'package:flutter/material.dart';
import 'package:sui/core.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  Widget build(context, ProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 64,
                backgroundImage: NetworkImage(
                  "https://i.ibb.co/PGv8ZzG/me.jpg",
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              const Text(
                "John doe",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              const Text(
                "UI/UX Designer at UXX Stores",
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text("OTHER INFORMATION"),
              ),
              for (var item in controller.menuItems)
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(item["label"]),
                  trailing: const Icon(
                    Icons.chevron_right,
                    size: 24.0,
                  ),
                  onTap: () => Get.to(item["view"]),
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ProfileView> createState() => ProfileController();
}
