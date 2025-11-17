import 'package:flutter/material.dart';
import 'package:promptia/features/auth/widgets/auth_input.dart';
import 'package:promptia/utils/style_constant.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _LgoinState();
}

class _LgoinState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 10),
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
              AuthInput(label: 'Name', hintText: 'Enter your name'),
              SizedBox(height: 20),
              AuthInput(label: 'Email', hintText: 'Enter your Email'),
              SizedBox(height: 20),
              AuthInput(
                label: 'Password',
                hintText: 'Enter your password',
                isPasswordField: true,
              ),
              SizedBox(height: 20),
              AuthInput(
                label: 'Confirm Password',
                hintText: 'Enter your confirm password',
                isPasswordField: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
