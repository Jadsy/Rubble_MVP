import 'package:flutter/material.dart';
import 'package:rubblefrontend/action_pages/vote_page.dart';
import 'package:rubblefrontend/components/action_pages.dart';

class SavePage extends StatefulWidget {
  const SavePage({super.key});

  @override
  State<SavePage> createState() => _SavePageState();
}

class _SavePageState extends State<SavePage> {
  @override
  Widget build(BuildContext context) {
    return ActionPages(
      pageTitle: "Save someone’s role",
      description:
          "You can select one person to save from death. \nThis is a limited power and can only \nbe used once per game!",
      action: "Save",
      onPressedAction: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return const VotePage();
            },
          ),
        );
      },
      onPressedSkip: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return const VotePage();
            },
          ),
        );
      },
      skip: true,
    );
  }
}
