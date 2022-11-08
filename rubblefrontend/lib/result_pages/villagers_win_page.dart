import 'package:flutter/material.dart';
import 'package:rubblefrontend/components/results_pages.dart';
import 'package:rubblefrontend/status_pages/inspection_page.dart';

class VillagersWinPage extends StatefulWidget {
  const VillagersWinPage({super.key});

  @override
  State<VillagersWinPage> createState() => _VillagersWinPageState();
}

class _VillagersWinPageState extends State<VillagersWinPage> {
  @override
  Widget build(BuildContext context) {
    return ResultPages(
      image: Image.asset("images/villagers_win.png"),
      winners: "Villagers win!",
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return const InspectionStatusPage();
            },
          ),
        );
      },
    );
  }
}
