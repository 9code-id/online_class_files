import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/tutorial_controller.dart';

class TutorialView extends StatefulWidget {
  TutorialView({Key? key}) : super(key: key);

  Widget build(context, TutorialController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: Text("Tutorial"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
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
              QDropdownField(
                label: "Roles",
                validator: Validator.required,
                items: [
                  {
                    "label": "Admin",
                    "value": "Admin",
                  },
                  {
                    "label": "Staff",
                    "value": "Staff",
                  }
                ],
                value: "Admin",
                onChanged: (value, label) {},
              ),
              QMemoField(
                label: "Address",
                validator: Validator.required,
                value: null,
                onChanged: (value) {},
              ),
              QButton(
                label: "Save",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TutorialView> createState() => TutorialController();
}
