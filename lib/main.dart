import 'package:flutter/material.dart';
import 'layouts/personal_details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Register',
    theme: ThemeData(primaryColor: Colors.white,),
      home: const PersonalDetailsPage(),
    );
  }
}
