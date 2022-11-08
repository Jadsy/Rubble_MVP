import 'package:flutter/material.dart';
import 'package:rubblefrontend/components/mycolors.dart';
import 'package:rubblefrontend/components/status_pages.dart';
import 'package:rubblefrontend/status_pages/saved_page.dart';

class InspectionStatusPage extends StatefulWidget {
  const InspectionStatusPage({super.key});

  @override
  State<InspectionStatusPage> createState() => _InspectionStatusPageState();
}

class _InspectionStatusPageState extends State<InspectionStatusPage> {
  @override
  Widget build(BuildContext context) {
    return StatusPages(
      image: Image.asset("images/villager_role.png"),
      description: "The following player has the following role",
      color: myWhite,
      status: "Inspection!",
      player: "Villager",
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return const SavedStatusPage();
            },
          ),
        );
      },
    );
  }
}
