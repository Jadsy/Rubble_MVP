import 'package:flutter/material.dart';
import 'package:rubblefrontend/components/mycolors.dart';
import 'package:rubblefrontend/components/status_pages.dart';
import 'package:rubblefrontend/status_pages/inspection_page.dart';

class DeadStatusPage extends StatefulWidget {
  const DeadStatusPage({super.key});

  @override
  State<DeadStatusPage> createState() => _DeadStatusPageState();
}

class _DeadStatusPageState extends State<DeadStatusPage> {
  @override
  Widget build(BuildContext context) {
    return StatusPages(
      image: Image.asset("images/dead_villager.png"),
      description: "The following player has been killed and was a:",
      color: deadRed,
      status: "Killed",
      player: "Villager",
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
