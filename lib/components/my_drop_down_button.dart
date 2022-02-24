import 'package:flutter/material.dart';

class MyDropDownButton extends StatefulWidget {
  final String dropdownValue;
  final double width;

  const MyDropDownButton({Key? key, required this.dropdownValue,required this.width})
      : super(key: key);

  @override
  State<MyDropDownButton> createState() =>
      _MyDropDownButtonState(dropdownValue,width);
}

class _MyDropDownButtonState extends State<MyDropDownButton> {
  String dropdownValue;
  double width;

  _MyDropDownButtonState(this.dropdownValue,this.width);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: width,
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          errorStyle: TextStyle(fontSize: 8),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white10, width: 1.0),
              borderRadius: BorderRadius.circular(8.0),
            )),
        iconEnabledColor: Colors.pink,
        hint: const Text("Select"),
        //value: dropdownValue,
        elevation: 16,
        style: const TextStyle(color: Colors.black87),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        validator: (value) =>
        (value == null) ? "Please Enter Value ." : null,
        items: <String>['egypt', 'cairo']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
