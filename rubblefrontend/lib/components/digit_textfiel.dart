import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'mycolors.dart';

// ignore: must_be_immutable
class DigitTextField extends StatelessWidget {
  DigitTextField({super.key});
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 66,
      child: TextField(
        keyboardType: TextInputType.number,
        inputFormatters: [LengthLimitingTextInputFormatter(1)],
        controller: nameController,
        decoration: InputDecoration(
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: yellowButton)),
          labelStyle: TextStyle(color: txtFieldColor),
          filled: true,
          fillColor: myDarkGrey,
        ),
        style: TextStyle(color: yellowButton, fontSize: 36),
        textAlign: TextAlign.center,
      ),
    );
  }
}
