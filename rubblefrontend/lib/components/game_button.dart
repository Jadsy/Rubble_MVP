import 'package:flutter/material.dart';

import 'mycolors.dart';

class GameButton extends StatelessWidget {
  final Color mycolor;
  final String txt;
  final GestureTapCallback onTap;
  const GameButton(
      {super.key,
      required this.mycolor,
      required this.txt,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              margin: const EdgeInsets.only(right: 20, left: 20),
              decoration: BoxDecoration(
                  color: mycolor,
                  border: Border.all(
                    color: mycolor,
                  ),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
            ),
            Container(
              height: 30,
              width: double.infinity,
              margin: const EdgeInsets.only(right: 20, left: 20),
              decoration: BoxDecoration(
                  color: myDarkGrey,
                  border: Border.all(
                    color: myDarkGrey,
                  ),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Text(
                "   $txt",
                style: TextStyle(color: myWhite, fontSize: 20),
              ),
            ),
          ],
        ));
  }
}
