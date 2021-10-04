// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignUp extends StatelessWidget {
  //const SignUp({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp Page"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: "Name",
                    ),
                    validator:
                        RequiredValidator(errorText: "Please enter valid Name"),
                    onSaved: (nvalue) {},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.30,
                        //color: Colors.yellow,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: "Age",
                          ),
                          validator: RequiredValidator(
                              errorText: "Please enter valid Name"),
                          onSaved: (nvalue) {},
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.30,
                        //color: Colors.purple,
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            labelText: "Gender",
                          ),
                          validator: RequiredValidator(
                              errorText: "Please enter valid Name"),
                          onSaved: (nvalue) {},
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    bottom: 10,
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email",
                    ),
                    validator: EmailValidator(
                        errorText: "Please enter valid Email Address"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    bottom: 10,
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Phone",
                    ),
                    validator: RequiredValidator(
                        errorText: "Please enter valid Phone Number"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    bottom: 10,
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Driving License",
                    ),
                    validator: EmailValidator(
                        errorText: "Please enter valid License Number"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    bottom: 10,
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Aadhar Number",
                    ),
                    validator: EmailValidator(
                        errorText: "Please enter valid Aadhar Number"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: FloatingActionButton.extended(
                    elevation: 10,
                    onPressed: () {},
                    label: Text("Submit Credentials"),
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
