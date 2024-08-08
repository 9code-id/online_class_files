// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import '../../theme/theme_config.dart';

class QButton extends StatelessWidget {
  final String label;
  final Color? color;
  final Color? textColor;
  final double? elevation;
  final Function onPressed;
  final bool disabled;
  const QButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.color,
    this.textColor,
    this.elevation,
    this.disabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (disabled) {
      return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 42,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: disabledColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          onPressed: () {},
          child: Text(
            label,
            style: TextStyle(
              color: disabledTextColor,
            ),
          ),
        ),
      );
    }

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 42,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? primaryColor,
          elevation: elevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        onPressed: () => onPressed(),
        child: Text(
          label,
          style: TextStyle(
            color: textColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
