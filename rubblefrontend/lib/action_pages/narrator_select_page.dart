import 'package:flutter/material.dart';
import 'package:rubblefrontend/action_pages/narrator_page.dart';
import 'package:rubblefrontend/components/action_pages.dart';

class NarratorSelectPage extends StatefulWidget {
  const NarratorSelectPage({super.key});

  @override
  State<NarratorSelectPage> createState() => _NarratorSelectPageState();
}

class _NarratorSelectPageState extends State<NarratorSelectPage> {
  @override
  Widget build(BuildContext context) {
    return ActionPages(
      pageTitle: "Choose the narrator",
      description: "Who’s the best storyteller!",
      action: "Confirm",
      onPressedAction: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return const NarratorPage();
            },
          ),
        );
      },
      onPressedSkip: () {},
      skip: false,
    );
  }
}
