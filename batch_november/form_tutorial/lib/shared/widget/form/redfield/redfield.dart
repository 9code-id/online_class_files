// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Redfield extends StatelessWidget {
  final String? value;
  final String label;
  final Function(String value) onSubmitted;

  const Redfield({
    Key? key,
    required this.label,
    required this.onSubmitted,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: value,
      maxLength: 20,
      decoration: InputDecoration(
        labelText: label,
        icon: Icon(Icons.input),
        labelStyle: TextStyle(
          color: Colors.blueGrey,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blueGrey,
          ),
        ),
        helperText: "What's your name?",
        fillColor: Colors.red[200]!,
      ),
      onChanged: (value) {},
      onFieldSubmitted: (value) {
        onSubmitted(value);
      },
    );
  }
}
