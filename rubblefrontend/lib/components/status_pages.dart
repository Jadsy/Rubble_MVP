import 'package:flutter/material.dart';
import 'package:rubblefrontend/components/common_button.dart';

import 'mycolors.dart';

class StatusPages extends StatelessWidget {
  final Image image;
  final Color color;
  final String status;
  final String player;
  final String description;
  final GestureTapCallback onPressed;
  const StatusPages(
      {super.key,
      required this.image,
      required this.color,
      required this.description,
      required this.status,
      required this.player,
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
          status,
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
            description,
            style: TextStyle(
              color: myLightWhite,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          image,
          Text(
            player,
            style: TextStyle(
                color: color, fontSize: 72, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          CommonButton(name: "Okay", onPressed: onPressed),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
