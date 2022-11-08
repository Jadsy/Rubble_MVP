import 'package:flutter/material.dart';
import 'package:rubblefrontend/components/action_pages.dart';
import 'package:rubblefrontend/status_pages/dead_page.dart';

class VotePage extends StatefulWidget {
  const VotePage({super.key});

  @override
  State<VotePage> createState() => _VotePageState();
}

class _VotePageState extends State<VotePage> {
  @override
  Widget build(BuildContext context) {
    return ActionPages(
      pageTitle: "Vote",
      description:
          "You can vote once per day. \nBe wise and do not choose your friends.",
      action: "Vote",
      onPressedAction: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return const DeadStatusPage();
            },
          ),
        );
      },
      onPressedSkip: () {},
      skip: false,
    );
  }
}
