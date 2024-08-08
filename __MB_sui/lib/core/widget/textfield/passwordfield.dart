// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../theme/theme_config.dart';

class QPasswordField extends StatefulWidget {
  final String label;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Function(String text)? onChanged;
  final Function(String text)? onSubmitted;
  final bool obscureText;

  const QPasswordField({
    Key? key,
    required this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.onSubmitted,
    this.obscureText = false,
  }) : super(key: key);

  @override
  State<QPasswordField> createState() => _QPasswordFieldState();
}

class _QPasswordFieldState extends State<QPasswordField> {
  bool visible = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(6.0),
        ),
        color: disabledColor,
      ),
      child: Row(
        children: [
          if (widget.prefixIcon != null) ...[
            Icon(
              widget.prefixIcon!,
              size: 24.0,
              color: secondaryTextColor,
            ),
            const SizedBox(
              width: 12.0,
            ),
          ],
          Expanded(
            child: TextFormField(
              obscureText: visible ? false : true,
              decoration: InputDecoration.collapsed(
                hintText: widget.label,
                hintStyle: TextStyle(
                  color: secondaryTextColor,
                ),
              ),
              onChanged: (value) {
                if (widget.onChanged != null) {
                  widget.onChanged!(value);
                }
              },
              onFieldSubmitted: (value) {
                if (widget.onSubmitted != null) {
                  widget.onSubmitted!(value);
                }
              },
            ),
          ),
          const SizedBox(
            width: 12.0,
          ),
          InkWell(
            onTap: () {
              visible = !visible;
              setState(() {});
            },
            child: Icon(
              visible ? Icons.visibility : Icons.visibility_off,
              size: 24.0,
              color: secondaryTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
