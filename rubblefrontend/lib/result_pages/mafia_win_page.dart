import 'package:flutter/material.dart';
import 'package:rubblefrontend/components/results_pages.dart';
import 'package:rubblefrontend/result_pages/villagers_win_page.dart';

class MafiaWinPage extends StatefulWidget {
  const MafiaWinPage({super.key});

  @override
  State<MafiaWinPage> createState() => _MafiaWinPageState();
}

class _MafiaWinPageState extends State<MafiaWinPage> {
  @override
  Widget build(BuildContext context) {
    return ResultPages(
      image: Image.asset("images/mafia_win.png"),
      winners: "Mafia wins!",
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return const VillagersWinPage();
            },
          ),
        );
      },
    );
  }
}
