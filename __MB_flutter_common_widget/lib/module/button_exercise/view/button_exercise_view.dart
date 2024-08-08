import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';
import '../controller/button_exercise_controller.dart';

class ButtonExerciseView extends StatefulWidget {
  const ButtonExerciseView({Key? key}) : super(key: key);

  Widget build(context, ButtonExerciseController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ButtonExercise"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: const Column(
            children: [
              /*
              1. Buatlah Button
              snippet: button
              backgroundColor: Colors.green
              text: Create
              */

              /*
              2. Buatlah Button
              snippet: button
              backgroundColor: Colors.orange
              text: Update
              */

              /*
              3. Buatlah Button
              snippet: button
              backgroundColor: Colors.red
              text: Delete
              */

              /*
              4. Buatlah Button
              snippet: button
              backgroundColor: Colors.blue
              text: View
              */

              /*
              5. Buatlah Button
              snippet: button
              backgroundColor: Colors.black
              foregroundColor: Colors.white
              text: Primary
              */

              /*
              6. Buatlah Button
              snippet: button
              backgroundColor: Colors.grey[300]
              foregroundColor: Colors.grey[600]
              text: Secondary
              */
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ButtonExerciseView> createState() => ButtonExerciseController();
}
