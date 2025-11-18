import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:promptia/features/auth/screen/login.dart';
import 'package:promptia/features/auth/screen/signup.dart';
import 'package:promptia/features/auth/widgets/auth_input.dart';
import 'package:promptia/routes/routes_name.dart';
import 'package:promptia/routes/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: Pages.pages,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fadeIn,
      title: 'Promptia',
      theme: ThemeData(
        colorScheme: ColorScheme.light(primary: Colors.black),
        textTheme: GoogleFonts.specialEliteTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      // home: const Lgoin(),
      initialRoute: RoutesName.login,
    );
  }
}
