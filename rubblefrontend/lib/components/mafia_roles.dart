import 'package:flutter/material.dart';
import 'package:rubblefrontend/components/common_button.dart';

import 'mycolors.dart';

class MafiaRoles extends StatelessWidget {
  final Image image;
  final String role;
  const MafiaRoles({super.key, required this.image, required this.role});

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
          "Mafia",
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
          const Spacer(),
          image,
          Text(
            "You are $role",
            style: TextStyle(
                color: myWhite, fontSize: 72, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          CommonButton(
              name: "Turn",
              onPressed: () {
                debugPrint("turn");
              }),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
