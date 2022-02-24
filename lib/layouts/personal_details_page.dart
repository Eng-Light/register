//import 'dart:html';
//import 'dart:convert';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:Register/components/my_button.dart';
import 'package:Register/layouts/address_details_page.dart';
import 'package:flutter/material.dart';
import 'package:Register/components/my_text_field.dart';
import 'package:Register/components/app_bar.dart';

import 'package:Register/components/my_step_progress_indicator.dart';
import 'package:image_picker/image_picker.dart';

class PersonalDetailsPage extends StatefulWidget {
  const PersonalDetailsPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _PersonalDetailsPage();
  }
}

class _PersonalDetailsPage extends State<PersonalDetailsPage> {
  File? _image;
  final ImagePicker _picker = ImagePicker();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
              minWidth: MediaQuery.of(context).size.width,
              minHeight: MediaQuery.of(context).size.height - 105),
          child: IntrinsicHeight(
            child: Container(
              padding:
                  EdgeInsets.only(top: 25, bottom: 20, left: 35, right: 35),
              child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Personal Details",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(178, 0, 0, 0),
                              fontSize: 20),
                        ),
                        MyStepProgressIndicator(currentStep: 0),
                        Text(
                          "Profile Picture",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(178, 0, 0, 0)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 60,
                                  backgroundImage: _image == null
                                      ? null
                                      : FileImage(_image!),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(
                                      bottom: 5, end: 5),
                                  child: GestureDetector(
                                      onTap: pickImage,
                                      child: Icon(
                                        Icons.camera_alt,
                                        size: 35,
                                        color: Colors.pink,
                                      )),
                                )
                              ],
                            ),
                            Form(
                              key: _formKey,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Full Name",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(178, 0, 0, 0)),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    MyTextInput(
                                      hText: ('Enter Your Name'),
                                      width: 400,
                                      sIcon: (Icons.account_circle),
                                    ),
                                    Text(
                                      "Email",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(178, 0, 0, 0)),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    MyTextInput(
                                      hText: ('enter email address'),
                                      width: 400,
                                      sIcon: (Icons.mail),
                                    ),
                                    Text(
                                      "Phone Number",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(178, 0, 0, 0)),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    MyTextInput(
                                      hText: ('enter phone number'),
                                      width: 400,
                                      sIcon: (Icons.phone),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      ],
                    ),
                    MyButton(
                      width: 350,
                      text: "Next",
                      onClick: () {
                        if (_formKey.currentState!.validate()) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddressDetailsPage()));
              }
                      },
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }

  void pickImage() async {
    final pickedImage = await _picker.getImage(source: ImageSource.camera);
    setState(() {
      if (pickedImage != null) {
        _image = File(pickedImage.path);
      } else {
        print("No Image Selected");
      }
    });
  }
}
