import 'package:flutter/material.dart';

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
            labelStyle:
                const TextStyle(color: Color.fromRGBO(105, 108, 117, 1)),
            filled: true,
            fillColor: const Color.fromRGBO(31, 36, 48, 1),
          ),
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
