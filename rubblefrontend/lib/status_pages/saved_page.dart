import 'package:flutter/material.dart';
import 'package:rubblefrontend/components/mycolors.dart';
import 'package:rubblefrontend/components/status_pages.dart';
import 'package:rubblefrontend/result_pages/mafia_win_page.dart';

class SavedStatusPage extends StatefulWidget {
  const SavedStatusPage({super.key});

  @override
  State<SavedStatusPage> createState() => _SavedStatusPageState();
}

class _SavedStatusPageState extends State<SavedStatusPage> {
  @override
  Widget build(BuildContext context) {
    return StatusPages(
      image: Image.asset("images/doctor_role.png"),
      description: "The following player has been saved! ",
      color: myWhite,
      status: "Saved",
      player: "Saved",
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return const MafiaWinPage();
            },
          ),
        );
      },
    );
  }
}
