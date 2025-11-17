import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:promptia/features/auth/screen/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Promptia',
      theme: ThemeData(
        colorScheme: ColorScheme.light(primary: Colors.black),
        textTheme: GoogleFonts.specialEliteTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const Lgoin(),
    );
  }
}
