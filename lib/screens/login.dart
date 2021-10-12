// ignore_for_file: prefer_const_constructors

import 'package:bike_project/screens/home.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:bike_project/screens/signUp.dart';
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
                      heroTag: "Btn1",
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (_) => SignUp(),
                          ),
                        );
                      },
                      label: Text("Sign Up Here"),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.75,
              padding: EdgeInsets.all(10),
              child: TextFormField(
                obscureText: true,
                obscuringCharacter: 'X',
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Phone Number",
                ),
                validator: RequiredValidator(
                    errorText: "Please enter valid Phone Number"),
                onSaved: (nvalue) {},
              ),
            ),
            SizedBox(
              height: 25,
            ),
            FloatingActionButton.extended(
              heroTag: "Btn2",
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => HomePage(),
                  ),
                );
              },
              label: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
