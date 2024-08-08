import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hyper_ui/core.dart';
import '../controller/profile_controller.dart';

class ProfileView extends StatefulWidget {
  ProfileView({Key? key}) : super(key: key);

  Widget build(context, ProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        actions: [],
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        color: Colors.red,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            QLocationPicker(
              id: "location",
              label: "Location",
              latitude: -6.218481065235333,
              longitude: 106.80254435779423,
              onChanged: (latitude, longitude) {},
            ),
            QDatePicker(
              label: "Birth date",
              validator: Validator.required,
              value: null,
              onChanged: (value) {
                print("value: $value");
              },
            ),
            QDatePicker(
              label: "Working date",
              validator: Validator.required,
              value: null,
              onChanged: (value) {
                print("value: $value");
              },
            ),
            //----------
          ],
        ),
      ).animate().slideX(),
    ).animate().slideX();
  }

  @override
  State<ProfileView> createState() => ProfileController();
}
