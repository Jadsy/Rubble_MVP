import 'package:flutter/material.dart';
import 'package:rubblefrontend/components/common_button.dart';
import 'package:rubblefrontend/components/mycolors.dart';
import 'package:rubblefrontend/menu/login_page.dart';

class IntroPage3 extends StatefulWidget {
  const IntroPage3({super.key});

  @override
  State<IntroPage3> createState() => _IntroPage3State();
}

class _IntroPage3State extends State<IntroPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          const Spacer(
            flex: 2,
          ),
          Text(
            "Easy as \n1, 2, 3",
            style: TextStyle(
              color: myWhite,
              fontSize: 48,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          Align(
            alignment: Alignment.centerLeft,
            child: Image.asset("images/intro3.png"),
          ),
          const Spacer(),
          Text(
            "Join a game using your own \nmobile device!",
            style: TextStyle(
              color: myWhite,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            const Spacer(
              flex: 10,
            ),
            Icon(
              Icons.circle,
              color: myDarkGrey,
              size: 10,
            ),
            const Spacer(),
            Icon(
              Icons.circle,
              color: myDarkGrey,
              size: 10,
            ),
            const Spacer(),
            Icon(
              Icons.circle,
              color: yellowButton,
              size: 10,
            ),
            const Spacer(
              flex: 10,
            )
          ]),
          const Spacer(),
          CommonButton(
            name: "Rubble!",
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const LogInPage();
                  },
                ),
              );
            },
          ),
          const Spacer(),
        ],
      ),
    ));
  }
}
