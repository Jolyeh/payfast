import 'package:flutter/material.dart';

class InputCards extends StatelessWidget {

  String? labele;

  InputCards({this.labele});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10),
        child: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text("$labele"),
          ),
        )
    );
  }
}