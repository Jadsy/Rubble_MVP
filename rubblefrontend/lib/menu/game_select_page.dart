import 'package:flutter/material.dart';
import 'package:rubblefrontend/components/game_button.dart';
import 'package:rubblefrontend/components/mycolors.dart';

import 'mafia_menu.dart';

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
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: [
            const SizedBox(
              height: 40,
            ),
            GameButton(
              mycolor: deceiverColor,
              txt: "Deciever",
              onTap: () {
                debugPrint("Deciever");
              },
            ),
            const SizedBox(
              height: 10,
            ),
            GameButton(
              mycolor: mafiaColor,
              txt: "Mafia",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const MafiaMenu();
                    },
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            GameButton(
              mycolor: wdgColor,
              txt: "Write, Draw, Guess",
              onTap: () {
                debugPrint("Write, Draw, Guess");
              },
            ),
            const SizedBox(
              height: 10,
            ),
            GameButton(
              mycolor: chameleonColor,
              txt: "Chameleon",
              onTap: () {
                debugPrint("Chameleon");
              },
            ),
            const SizedBox(
              height: 10,
            ),
            GameButton(
              mycolor: charadesColor,
              txt: "Charades",
              onTap: () {
                debugPrint("Charades");
              },
            ),
          ],
        ),
      ),
    );
  }
}
