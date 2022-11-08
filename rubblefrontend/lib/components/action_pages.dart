import 'package:flutter/material.dart';
import 'package:rubblefrontend/components/skip_button.dart';
import 'common_button.dart';
import 'mycolors.dart';

class ActionPages extends StatelessWidget {
  const ActionPages({
    super.key,
    required this.pageTitle,
    required this.description,
    required this.action,
    required this.onPressedAction,
    required this.onPressedSkip,
    required this.skip,
  });
  final String pageTitle;
  final String description;
  final String action;
  final GestureTapCallback onPressedAction;
  final GestureTapCallback onPressedSkip;
  final bool skip;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: rubbleColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios, color: myWhite),
        ),
        title: Text(
          pageTitle,
          style: TextStyle(
            color: myWhite,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            description,
            style: TextStyle(
              color: myLightWhite,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "     Players:",
              style: TextStyle(
                color: myWhite,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Spacer(
            flex: 5,
          ),
          CommonButton(name: action, onPressed: onPressedAction),
          const SizedBox(
            height: 10,
          ),
          skip ? SkipButton(onPressed: onPressedSkip) : const SizedBox.shrink(),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
