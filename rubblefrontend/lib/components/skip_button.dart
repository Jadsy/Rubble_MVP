import 'package:flutter/material.dart';
import 'mycolors.dart';

// ignore: must_be_immutable
class SkipButton extends StatelessWidget {
  GestureTapCallback onPressed;
  SkipButton({super.key, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            side: BorderSide(width: 1, color: myWhite),
            backgroundColor: rubbleColor,
            padding: const EdgeInsets.all(20.0),
          ),
          onPressed: onPressed,
          child: Text(
            "Skip",
            style: TextStyle(color: myWhite, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
