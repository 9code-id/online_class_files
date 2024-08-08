import 'package:flutter/material.dart';
import 'package:sui/core.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({Key? key}) : super(key: key);

  Widget build(context, EditProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EditProfile"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 64.0,
                backgroundImage: const NetworkImage(
                  "https://i.ibb.co/PGv8ZzG/me.jpg",
                ),
                child: Stack(
                  children: [
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: CircleAvatar(
                        radius: 16.0,
                        backgroundColor: primaryColor,
                        child: const Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                          size: 16.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              QTextField(
                label: "Full name",
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QTextField(
                label: "Email",
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QTextField(
                label: "Date of Birth",
                onChanged: (value) {},
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: QButton(
          label: "Update",
          onPressed: () {},
        ),
      ),
    );
  }

  @override
  State<EditProfileView> createState() => EditProfileController();
}
