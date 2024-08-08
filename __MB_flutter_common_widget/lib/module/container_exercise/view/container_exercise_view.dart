import 'package:flutter/material.dart';
import 'package:flutter_common_widget/core.dart';
import '../controller/container_exercise_controller.dart';

class ContainerExerciseView extends StatefulWidget {
  const ContainerExerciseView({Key? key}) : super(key: key);

  Widget build(context, ContainerExerciseController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ContainerExercise"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: const Column(
            children: [
              /*
              1. Buatlah Container
              snippet: con
              width: 200
              height: 200
              color: Colors.red
              */

              /*
              2. Buatlah Container
              snippet: con
              width: w100
              height: 200
              color: Colors.blue
              */

              /*
              3. Buatlah Container
              snippet: con
              width: w100 
              height: 300
              color: Colors.green
              radius: snippet:radius 30
              */

              /*
              4. Buatlah Container
              snippet: con
              width: w100 
              height: 400
              color: Colors.red
              radius: snippet:radius 40
              background image: decoration_image
              */

              /*
              5. Buatlah Container
              snippet: con
              width: w100 
              height: 600
              color: Colors.red
              radius: snippet:radius 40
              gradient: gradient
              */

              /*
              6. Buatlah Container
              snippet: con
              width: w100 
              height: 600
              color: Colors.red
              radius: snippet:radius 40
              gradient: gradient
              border: border
              */
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ContainerExerciseView> createState() => ContainerExerciseController();
}
