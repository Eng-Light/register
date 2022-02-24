import 'dart:io';

import 'package:Register/components/app_bar.dart';
import 'package:Register/components/my_button.dart';
import 'package:Register/components/my_step_progress_indicator.dart';
import 'package:flutter/material.dart';

class CompletePage extends StatelessWidget {
  const CompletePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        body: Container(
          height: double.infinity,
          padding:
              const EdgeInsets.only(top: 25, bottom: 20, left: 35, right: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Registration Complete!",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(178, 0, 0, 0),
                          fontSize: 20),
                    ),
                    MyStepProgressIndicator(currentStep: 4),
                  ]),
              Container(
                  alignment: Alignment.center,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: const Icon(Icons.check_circle_rounded,
                              color: Colors.green, size: 110),
                        ),
                        const Text(
                          "Your account registration is now complete!",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          "you have now successfully registered for the portal.",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          "start adding bags and trips to begin your adventure.",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          textAlign: TextAlign.center,
                        )
                      ])),
              MyButton(
                width: 350,
                onClick: (){
                  exit(0);
                },
              )
            ],
          ),
        ));
  }
}
