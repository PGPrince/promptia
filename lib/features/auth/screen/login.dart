import 'package:flutter/material.dart';

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
          padding: EdgeInsets.only(left: 10),
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
              SizedBox(height: 10),
              TextFormField(decoration: InputDecoration(hintText: 'Email')),
            ],
          ),
        ),
      ),
    );
  }
}
