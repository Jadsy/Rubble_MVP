import 'package:flutter/material.dart';
import 'package:rubblefrontend/intro_page_three.dart';
import 'components/common_button.dart';
import 'components/mycolors.dart';

class IntroPage2 extends StatefulWidget {
  const IntroPage2({super.key});

  @override
  State<IntroPage2> createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> {
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
            "Losing \nsucks!",
            style: TextStyle(
              color: myWhite,
              fontSize: 48,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          Image.asset("images/intro2.png"),
          const Spacer(),
          Text(
            "Designed to appeal for \naudience play along!",
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
              color: yellowButton,
              size: 10,
            ),
            const Spacer(),
            Icon(
              Icons.circle,
              color: myDarkGrey,
              size: 10,
            ),
            const Spacer(
              flex: 10,
            )
          ]),
          const Spacer(),
          CommonButton(
            name: "Continue",
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const IntroPage3();
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
