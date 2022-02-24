// ignore_for_file: prefer_const_constructors
import 'package:Register/components/app_bar.dart';
import 'package:Register/components/my_button.dart';
import 'package:Register/components/my_step_progress_indicator.dart';
import 'package:Register/components/my_text_field.dart';
import 'package:flutter/material.dart';

import 'complete_page.dart';

class SetPasswordPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  SetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: MyAppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(top: 25, bottom: 20, left: 35, right: 35),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Set Up Your Password",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(178, 0, 0, 0),
                      fontSize: 20),
                ),
                MyStepProgressIndicator(currentStep: 3),
                Container(
                  padding: EdgeInsets.only(top: 40),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        MyTextInput(
                            width: 350,
                            hText: "Enter password",
                            oText: true,
                            sIcon: Icons.visibility_off_rounded),
                        MyTextInput(
                            width: 350,
                            hText: "Re-enter password",
                            oText: true,
                            sIcon: Icons.visibility_off_rounded),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CompletePage()));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
