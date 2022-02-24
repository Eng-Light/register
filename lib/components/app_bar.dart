import 'package:flutter/material.dart';

class MyAppBar extends AppBar {
  MyAppBar(
      {Key? key,
      title = const Text(
        "Register",
        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25),
      ),
        elevation = 0.0
      })
      : super(key: key, title: title,backgroundColor: Colors.white,elevation: elevation,iconTheme: const IconThemeData(color: Colors.black87));
}
