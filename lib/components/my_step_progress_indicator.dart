import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class MyStepProgressIndicator extends StatelessWidget {
  final int currentStep;

  const MyStepProgressIndicator({Key? key, required this.currentStep})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45,
      alignment: Alignment.center,
      child: StepProgressIndicator(
        size: 6,
        padding: 4,
        totalSteps: 4,
        currentStep: currentStep,
        selectedColor: Colors.pink,
        roundedEdges: const Radius.circular(15),
      ),
    );
  }
}
