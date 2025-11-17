import 'package:flutter/material.dart';

class AuthInput extends StatelessWidget {
  final String label, hintText;
  final bool isPasswordField;
  const AuthInput({
    super.key,
    required this.label,
    required this.hintText,
    this.isPasswordField = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPasswordField,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(width: 2.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(width: 2.5),
        ),
        label: Text(label),
        hintText: hintText,
      ),
    );
  }
}
