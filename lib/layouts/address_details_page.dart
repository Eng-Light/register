// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:Register/components/my_drop_down_button.dart';
import 'package:Register/components/app_bar.dart';
import 'package:Register/components/my_button.dart';
import 'package:Register/components/my_step_progress_indicator.dart';
import 'package:Register/components/my_text_field_no_icon.dart';
import 'package:Register/layouts/attachments_page.dart';
import 'package:flutter/material.dart';

class AddressDetailsPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  AddressDetailsPage({Key? key}) : super(key: key);

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
                        "Address Details",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(178, 0, 0, 0),
                            fontSize: 20),
                      ),
                      MyStepProgressIndicator(currentStep: 1),
                      Container(
                        padding: EdgeInsets.only(top: 40),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Country",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      MyDropDownButton(
                                        dropdownValue: "egypt",
                                        width: 140,
                                      )
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "City",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      MyDropDownButton(
                                        dropdownValue: "cairo",
                                        width: 140,
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "State",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    MyDropDownButton(
                                        dropdownValue: "egypt", width: 340),
                                  ]),
                              Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Street",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    MyTextInputNoIcon(
                                      width: 350,
                                      hText: "Enter street",
                                    )
                                  ]),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      MyTextInputNoIcon(
                                        hText: "building No.",
                                        width: 95,
                                      )
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      MyTextInputNoIcon(
                                        hText: "building No.",
                                        width: 95,
                                      )
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      MyTextInputNoIcon(
                                        hText: "building No.",
                                        width: 95,
                                      )
                                    ],
                                  )
                                ],
                              ),
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
                                builder: (context) => AttachmentsPage()));
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
