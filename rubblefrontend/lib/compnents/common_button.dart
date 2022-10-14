import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CommonButton extends StatelessWidget {
  String name;
  GestureTapCallback onPressed;
  CommonButton({super.key, required this.name, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(244, 209, 68, 1),
            padding: const EdgeInsets.all(20.0),
          ),
          onPressed: onPressed,
          child: Text(
            name,
            style: const TextStyle(
                color: Color.fromRGBO(5, 11, 24, 1),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
