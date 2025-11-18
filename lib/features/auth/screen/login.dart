import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/route_manager.dart';
import 'package:promptia/features/auth/widgets/auth_input.dart';
import 'package:promptia/utils/style_constant.dart';
import 'package:promptia/routes/routes_name.dart';

class Lgoin extends StatefulWidget {
  const Lgoin({Key? key}) : super(key: key);

  @override
  State<Lgoin> createState() => _LgoinState();
}

class _LgoinState extends State<Lgoin> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController(text: "");
  final TextEditingController passwordController = TextEditingController(
    text: "",
  );
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Form(
            key: _form,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Promptia", style: TextStyle(fontSize: 30)),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Welcome back'),
                ),
                SizedBox(height: 20),
                AuthInput(
                  label: 'Email',
                  hintText: 'Enter your email',
                  validatorCallback: ValidationBuilder().email().build(),
                  controller: emailController,
                ),
                SizedBox(height: 20),
                AuthInput(
                  label: 'Password',
                  hintText: 'Enter your password',
                  isPasswordField: true,
                  validatorCallback: ValidationBuilder()
                      .minLength(6)
                      .maxLength(8)
                      .build(),
                  controller: passwordController,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Login'),
                  style: CommonButtonStyle(),
                ),
                SizedBox(height: 10),
                Text('-- OR --'),
                Text.rich(
                  TextSpan(
                    text: "Don't hava an account? ",
                    children: [
                      TextSpan(
                        text: "Sign up",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.toNamed(RoutesName.signup),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
