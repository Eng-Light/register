// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:Register/components/app_bar.dart';
import 'package:Register/components/my_button.dart';
import 'package:Register/components/my_step_progress_indicator.dart';
import 'package:Register/components/my_text_field.dart';
import 'package:Register/layouts/set_password_page.dart';
import 'package:flutter/material.dart';

class AttachmentsPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  AttachmentsPage({Key? key}) : super(key: key);

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
                        "Attachments",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(178, 0, 0, 0),
                            fontSize: 20),
                      ),
                      MyStepProgressIndicator(currentStep: 2),
                      Container(
                        padding: EdgeInsets.only(top: 40),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "National ID",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(178, 0, 0, 0)),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    MyTextInput(
                                      hText: ('Placeholder'),
                                      width: 400,
                                      sIcon: (Icons.camera_alt_outlined),
                                    ),Text(
                                      "National ID",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(178, 0, 0, 0)),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    MyTextInput(
                                      hText: ('Placeholder'),
                                      width: 400,
                                      sIcon: (Icons.camera_alt_outlined),
                                    ),Text(
                                      "National ID",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(178, 0, 0, 0)),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    MyTextInput(
                                      hText: ('Placeholder'),
                                      width: 400,
                                      sIcon: (Icons.camera_alt_outlined),
                                    ),Text(
                                      "National ID",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(178, 0, 0, 0)),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    MyTextInput(
                                      hText: ('Placeholder'),
                                      width: 400,
                                      sIcon: (Icons.camera_alt_outlined),
                                    ),
                                  ]),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  MyButton(
                    width: 350,
                    text: "Next",
                    onClick: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SetPasswordPage()));
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
