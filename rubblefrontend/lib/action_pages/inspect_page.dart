import 'package:flutter/material.dart';
import 'package:rubblefrontend/components/action_pages.dart';
import 'save_page.dart';

class InspectPage extends StatefulWidget {
  const InspectPage({super.key});

  @override
  State<InspectPage> createState() => _InspectPageState();
}

class _InspectPageState extends State<InspectPage> {
  @override
  Widget build(BuildContext context) {
    return ActionPages(
      pageTitle: "Inspect someone’s role",
      description:
          "You can select one person to know their role. \nThis is a limited power and can only \nbe used once per game!",
      action: "Inspect",
      onPressedAction: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return const SavePage();
            },
          ),
        );
      },
      onPressedSkip: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return const SavePage();
            },
          ),
        );
      },
      skip: true,
    );
  }
}
