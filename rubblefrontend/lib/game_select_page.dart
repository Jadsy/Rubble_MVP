import 'package:flutter/material.dart';
import 'package:rubblefrontend/compnents/game_button.dart';

class GameSelectPage extends StatelessWidget {
  const GameSelectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(5, 11, 24, 1),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        title: const Text(
          "Games",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(30),
          children: const [
            GameButton(
              mycolor: Color.fromRGBO(71, 29, 90, 1),
              txt: "Deciever",
            ),
            SizedBox(
              height: 20,
            ),
            GameButton(
              mycolor: Color.fromRGBO(242, 76, 60, 1),
              txt: "Mafia",
            ),
            SizedBox(
              height: 20,
            ),
            GameButton(
              mycolor: Color.fromRGBO(64, 201, 162, 1),
              txt: "Write, Draw, Guess",
            ),
            SizedBox(
              height: 20,
            ),
            GameButton(
              mycolor: Color.fromRGBO(3, 101, 244, 1),
              txt: "Chameleon",
            ),
            SizedBox(
              height: 20,
            ),
            GameButton(
              mycolor: Color.fromRGBO(225, 81, 134, 1),
              txt: "Charades",
            ),
          ],
        ),
      ),
    );
  }
}
