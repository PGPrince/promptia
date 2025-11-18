import "package:flutter/widgets.dart";
import "package:get/get.dart";
import "package:promptia/features/auth/screen/login.dart";
import "package:promptia/features/auth/screen/signup.dart";
import 'package:promptia/routes/routes_name.dart';

class Pages {
  static final pages = [
    GetPage(name: RoutesName.login, page: () => Lgoin()),
    GetPage(name: RoutesName.signup, page: () => Signup()),
  ];
}
