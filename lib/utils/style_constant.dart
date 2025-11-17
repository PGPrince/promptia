import 'package:flutter/material.dart';

ButtonStyle CommonButtonStyle() => ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
  minimumSize: MaterialStateProperty.all<Size>(const Size.fromHeight(40.0)),
);
