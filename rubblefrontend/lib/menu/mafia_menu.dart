import 'package:flutter/material.dart';
import 'package:rubblefrontend/components/common_button.dart';
import 'package:rubblefrontend/components/mycolors.dart';

import 'join_page.dart';
import 'lobby_page.dart';

class MafiaMenu extends StatefulWidget {
  const MafiaMenu({super.key});

  @override
  State<MafiaMenu> createState() => _MafiaMenuState();
}

class _MafiaMenuState extends State<MafiaMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mafiaColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios, color: myWhite),
        ),
      ),
      backgroundColor: mafiaColor,
      body: Column(
        children: [
          const Spacer(),
          Container(
            height: 550,
            width: double.infinity,
            decoration: BoxDecoration(
                color: rubbleColor,
                border: Border.all(
                  color: rubbleColor,
                ),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset("images/maffialogo.png"),
                    Text(
                      "Mafia",
                      style: TextStyle(
                        color: myWhite,
                        fontSize: 20,
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.info_outline_rounded,
                      color: myWhite,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "“Kill” civilians until you as a mafia are the majority, or as a civilian try to kill off the entire mafia. \n \nDuring the night, everyone keeps his or her eyes closed until the narrator \"awakens\" each role, beginning with the mafia, then the doctor, then the detective.",
                    style: TextStyle(
                      color: myWhite,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                const Spacer(),
                CommonButton(
                  name: "Create Game",
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const LobbyPage();
                        },
                      ),
                    );
                  },
                ),
                const Spacer(),
                CommonButton(
                  name: "Join Game",
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const JoinGame();
                        },
                      ),
                    );
                  },
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
