import 'package:flutter/material.dart';
import 'package:promptia/features/auth/widgets/auth_input.dart';
import 'package:promptia/utils/style_constant.dart';

class Lgoin extends StatefulWidget {
  const Lgoin({Key? key}) : super(key: key);

  @override
  State<Lgoin> createState() => _LgoinState();
}

class _LgoinState extends State<Lgoin> {
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
                child: Text('Welcome back'),
              ),
              SizedBox(height: 20),
              AuthInput(label: 'Email', hintText: 'Enter your email'),
              SizedBox(height: 20),
              AuthInput(label: 'Password', hintText: 'Enter your password'),
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
