import 'package:flutter/material.dart';
import 'package:rubblefrontend/components/game_button.dart';

import 'components/mycolors.dart';

class GameSelectPage extends StatelessWidget {
  const GameSelectPage({super.key});

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
          "Games",
          style: TextStyle(
            color: myWhite,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(70),
          children: [
            GameButton(
              mycolor: deceiverColor,
              txt: "Deciever",
            ),
            const SizedBox(
              height: 30,
            ),
            GameButton(
              mycolor: maffiaColor,
              txt: "Maffia",
            ),
            const SizedBox(
              height: 30,
            ),
            GameButton(
              mycolor: wdgColor,
              txt: "Write, Draw, Guess",
            ),
            const SizedBox(
              height: 30,
            ),
            GameButton(
              mycolor: chameleonColor,
              txt: "Chameleon",
            ),
            const SizedBox(
              height: 30,
            ),
            GameButton(
              mycolor: charadesColor,
              txt: "Charades",
            ),
          ],
        ),
      ),
    );
  }
}
