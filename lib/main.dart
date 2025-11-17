import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('Promptia'))),
      ),
    );
  }
}
