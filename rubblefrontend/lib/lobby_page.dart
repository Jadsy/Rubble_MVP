import 'package:flutter/material.dart';
import 'package:rubblefrontend/components/game_button.dart';

import 'components/common_button.dart';
import 'components/mycolors.dart';

class LobbyPage extends StatefulWidget {
  const LobbyPage({super.key});

  @override
  State<LobbyPage> createState() => _LobbyPageState();
}

class _LobbyPageState extends State<LobbyPage> {
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
          "Game #-id-",
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
            "Share to join",
            style: TextStyle(
              color: myWhite,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          GameButton(
              mycolor: maffiaColor,
              txt: "Maffia",
              onTap: () {
                debugPrint("maffia");
              }),
          const Spacer(),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "     Players:",
              style: TextStyle(
                color: myWhite,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Spacer(
            flex: 5,
          ),
          CommonButton(
              name: "Start",
              onPressed: () {
                debugPrint("ll");
              }),
          const Spacer(),
        ],
      ),
    );
  }
}
