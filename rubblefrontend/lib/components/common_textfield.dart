import 'package:flutter/material.dart';
import 'mycolors.dart';

// ignore: must_be_immutable
class CommonTextField extends StatelessWidget {
  String name;
  CommonTextField({super.key, required this.name});
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20),
      child: SizedBox(
        width: double.infinity,
        child: TextField(
          controller: nameController,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: name,
            labelStyle: TextStyle(color: txtFieldColor),
            filled: true,
            fillColor: myDarkGrey,
          ),
          style: TextStyle(color: myWhite),
        ),
      ),
    );
  }
}
