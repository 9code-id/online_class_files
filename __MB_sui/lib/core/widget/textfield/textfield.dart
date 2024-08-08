// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../theme/theme_config.dart';

class QTextField extends StatelessWidget {
  final String label;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Function(String text)? onChanged;
  final Function(String text)? onSubmitted;
  final bool obscureText;

  const QTextField({
    Key? key,
    required this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.onSubmitted,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(6.0),
        ),
        color: disabledColor,
      ),
      child: Row(
        children: [
          if (prefixIcon != null) ...[
            Icon(
              prefixIcon!,
              size: 24.0,
              color: secondaryTextColor,
            ),
            const SizedBox(
              width: 12.0,
            ),
          ],
          Expanded(
            child: TextFormField(
              obscureText: obscureText,
              decoration: InputDecoration.collapsed(
                hintText: label,
                hintStyle: TextStyle(
                  color: secondaryTextColor,
                ),
              ),
              onChanged: (value) {
                if (onChanged != null) {
                  onChanged!(value);
                }
              },
              onFieldSubmitted: (value) {
                if (onSubmitted != null) {
                  onSubmitted!(value);
                }
              },
            ),
          ),
          if (suffixIcon != null) ...[
            const SizedBox(
              width: 12.0,
            ),
            Icon(
              suffixIcon!,
              size: 24.0,
              color: secondaryTextColor,
            ),
          ],
        ],
      ),
    );
  }
}
