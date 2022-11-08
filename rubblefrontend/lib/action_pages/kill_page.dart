import 'package:flutter/material.dart';
import 'package:rubblefrontend/action_pages/inspect_page.dart';
import 'package:rubblefrontend/components/action_pages.dart';

class KillPage extends StatefulWidget {
  const KillPage({super.key});

  @override
  State<KillPage> createState() => _KillPageState();
}

class _KillPageState extends State<KillPage> {
  @override
  Widget build(BuildContext context) {
    return ActionPages(
      pageTitle: "Choose someone to kill",
      description: "Every night the mafia decides who gets killed!",
      action: "Kill",
      onPressedAction: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return const InspectPage();
            },
          ),
        );
      },
      onPressedSkip: () {},
      skip: false,
    );
  }
}
