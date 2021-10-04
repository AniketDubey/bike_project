// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.blueAccent,
              padding: EdgeInsets.symmetric(horizontal: 8),
              height: MediaQuery.of(context).size.height * 0.40,
              child: Image.asset("assets/images/logo.png"),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                color: Colors.blue.shade400,
                child: Row(
                  children: <Widget>[
                    Text("Join Us"),
                    Spacer(),
                    FloatingActionButton.extended(
                      onPressed: () {},
                      label: Text("Sign Up Here"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
