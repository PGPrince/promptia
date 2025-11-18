import 'package:flutter/material.dart';
import 'package:promptia/utils/type_def.dart';

class AuthInput extends StatelessWidget {
  final String label, hintText;
  final bool isPasswordField;
  final ValidatorCallback validatorCallback;
  final TextEditingController controller;
  const AuthInput({
    super.key,
    required this.label,
    required this.hintText,
    required this.validatorCallback,
    required this.controller,
    this.isPasswordField = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPasswordField,
      controller: controller,
      validator: validatorCallback,
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
