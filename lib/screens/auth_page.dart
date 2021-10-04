import 'package:bike_project/screens/signUp.dart';
import 'package:flutter/material.dart';
import 'package:bike_project/screens/login.dart';

class Auth_Page extends StatefulWidget {
  const Auth_Page({Key? key}) : super(key: key);

  @override
  _Auth_PageState createState() => _Auth_PageState();
}

class _Auth_PageState extends State<Auth_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: Text("Authenticate Yourself"),
      ),*/
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              color: Colors.amber,
              child: Center(
                child: ClipRRect(
                  child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/en/e/e7/Rapido-logo.png"),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.55,
              color: Colors.pink,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    FloatingActionButton.extended(
                      heroTag: "btn1",
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => SignUp(),
                          ),
                        );
                      },
                      label: Text("SignUp"),
                    ),
                    FloatingActionButton.extended(
                      heroTag: "btn2",
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => Login(),
                          ),
                        );
                      },
                      label: Text("Login"),
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
