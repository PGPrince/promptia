import 'package:flutter/material.dart';

class AuthInput extends StatelessWidget {
  final String label, hintText;
  const AuthInput({super.key, required this.label, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
