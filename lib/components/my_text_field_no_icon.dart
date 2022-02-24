// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextInputNoIcon extends StatelessWidget {
  final String hText;
  final double width;
  final bool oText;

  const MyTextInputNoIcon({
    Key? key,
    required this.hText,
    this.width = 200,
    this.oText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 81,
      //alignment: Alignment.center,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        TextFormField(
          //cursorColor: Colors.pink,
          style: TextStyle(fontSize: 14),
          decoration: InputDecoration(
              hintText: hText,
              errorStyle: TextStyle(fontSize: 10),
              labelStyle: TextStyle(color: Colors.black26),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.pink, width: 1.0),
                borderRadius: BorderRadius.circular(8.0),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white10, width: 1.0),
                borderRadius: BorderRadius.circular(8.0),
              )),
          obscureText: oText,
          validator: (value) =>
          (value!.isEmpty) ? "Please Enter Value ." : null,
        ),
      ]),
    );
  }
}
