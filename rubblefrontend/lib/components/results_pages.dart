import 'package:flutter/material.dart';
import 'package:rubblefrontend/components/common_button.dart';

import 'mycolors.dart';

class ResultPages extends StatelessWidget {
  final Image image;
  final String winners;
  final GestureTapCallback onPressed;
  const ResultPages(
      {super.key,
      required this.image,
      required this.winners,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: rubbleColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios, color: myWhite),
        ),
        title: Text(
          "Game completed",
          style: TextStyle(
            color: myWhite,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            "The game is over! We have completed \nthis game of mafia!",
            style: TextStyle(
              color: myLightWhite,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          image,
          Text(
            winners,
            style: TextStyle(
                color: myWhite, fontSize: 72, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          Text(
            "Mafia members:",
            style: TextStyle(
              color: myLightWhite,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          CommonButton(name: "Close", onPressed: onPressed),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
