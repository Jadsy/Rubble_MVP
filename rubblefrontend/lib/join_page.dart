import 'package:flutter/material.dart';
import 'package:rubblefrontend/components/common_button.dart';
import 'package:rubblefrontend/components/digit_textfiel.dart';
import 'package:rubblefrontend/lobby_page.dart';

import 'components/mycolors.dart';

class JoinGame extends StatefulWidget {
  const JoinGame({super.key});

  @override
  State<JoinGame> createState() => _JoinGameState();
}

class _JoinGameState extends State<JoinGame> {
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
          "Join Game",
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
            "Enter the login code\nto join the game!",
            style: TextStyle(
              color: myWhite,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DigitTextField(),
              DigitTextField(),
              DigitTextField(),
              DigitTextField(),
            ],
          ),
          const Spacer(),
          CommonButton(
              name: "Join",
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const LobbyPage();
                    },
                  ),
                );
              }),
          const Spacer(),
        ],
      ),
    );
  }
}
