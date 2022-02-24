import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String? text;
  final double? width;
  final VoidCallback onClick;

  const MyButton({Key? key, this.text = "Finish", this.width = 300, required this.onClick,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
        children: [
      Material(
        borderRadius: BorderRadius.circular(8.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onClick,
          minWidth: width,
          height: 50,
          color: Colors.pink,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Text(
            text!,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ]);
  }
}
