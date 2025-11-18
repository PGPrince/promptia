import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/route_manager.dart';
import 'package:promptia/features/auth/widgets/auth_input.dart';
import 'package:promptia/utils/style_constant.dart';
import 'package:promptia/utils/type_def.dart';
import 'package:promptia/routes/routes_name.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController(text: "");
  final TextEditingController emailController = TextEditingController(text: "");
  final TextEditingController passwordController = TextEditingController(
    text: "",
  );
  final TextEditingController cpasswordController = TextEditingController(
    text: "",
  );

  @override
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
                  child: Text('Welcome to the world of AI chats prompts'),
                ),
                SizedBox(height: 20),
                AuthInput(
                  label: 'Name',
                  hintText: 'Enter your name',
                  validatorCallback: ValidationBuilder()
                      .minLength(2)
                      .maxLength(50)
                      .build(),
                  controller: nameController,
                ),
                SizedBox(height: 20),
                AuthInput(
                  label: 'Email',
                  hintText: 'Enter your Email',
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
                AuthInput(
                  label: 'Confirm Password',
                  hintText: 'Enter your confirm password',
                  isPasswordField: true,
                  validatorCallback: (value) {
                    if (passwordController.text != value) {
                      return "Confirm password do not match";
                    }
                    return null;
                  },
                  controller: cpasswordController,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_form.currentState!.validate()) {
                      print("you have to go");
                    }
                  },
                  child: Text('Sign Up'),
                  style: CommonButtonStyle(),
                ),
                SizedBox(height: 10),
                Text('-- OR --'),
                Text.rich(
                  TextSpan(
                    text: "Already hava an account? ",
                    children: [
                      TextSpan(
                        text: "Sign In",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.toNamed(RoutesName.login),
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
