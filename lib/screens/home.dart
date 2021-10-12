// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:bike_project/widgets/autocomplete_list.dart';

class HomePage extends StatelessWidget {
  //const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            AutocompleteList("Source Station*"),
            SizedBox(
              height: 20,
            ),
            AutocompleteList("Destination Station*"),
            SizedBox(
              height: 20,
            ),
            FloatingActionButton.extended(
              onPressed: () {},
              label: Text("Submit Details"),
            ),
          ],
        ),
      ),
    );
  }
}
