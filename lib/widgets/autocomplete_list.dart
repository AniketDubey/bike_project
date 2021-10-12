// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:bike_project/models/skeletons/station.dart';
import 'package:bike_project/models/datafield/DUMMYDATA.dart';

class AutocompleteList extends StatelessWidget {
  //const AutocompleteList({ Key? key }) : super(key: key);

  String sta;
  AutocompleteList(this.sta);

  @override
  Widget build(BuildContext context) {
    return Autocomplete<Station>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        return stationList
            .where(
              (Station station) => station.sName.toLowerCase().startsWith(
                    textEditingValue.text.toLowerCase(),
                  ),
            )
            .toList();
      },
      displayStringForOption: (Station option) => option.sName,
      fieldViewBuilder: (BuildContext context,
          TextEditingController fieldTextEditingController,
          FocusNode fieldFocusNode,
          VoidCallback onFieldSubmitted) {
        return TextField(
          decoration: InputDecoration(
            labelText: sta,
          ),
          controller: fieldTextEditingController,
          focusNode: fieldFocusNode,
          style: const TextStyle(fontWeight: FontWeight.bold),
        );
      },
      onSelected: (Station selection) {
        print('Selected: ${selection.sName}');
      },
      optionsViewBuilder: (BuildContext context,
          AutocompleteOnSelected<Station> onSelected,
          Iterable<Station> options) {
        return Align(
          alignment: Alignment.topLeft,
          child: Material(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueAccent,
              ),
              width: MediaQuery.of(context).size.width * 0.4,
              child: ListView.builder(
                padding: EdgeInsets.all(10),
                itemCount: options.length,
                itemBuilder: (BuildContext context, int index) {
                  final Station option = options.elementAt(index);
                  return GestureDetector(
                    onTap: () {
                      onSelected(option);
                    },
                    child: ListTile(
                      title: Text(
                        option.sName,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
