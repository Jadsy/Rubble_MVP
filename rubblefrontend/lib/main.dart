import 'package:flutter/material.dart';
import 'package:rubblefrontend/components/mycolors.dart';
import 'package:rubblefrontend/intro_page_two.dart';
import 'components/common_button.dart';

void main() {
  runApp(const RubbleMVP());
}

class RubbleMVP extends StatelessWidget {
  const RubbleMVP({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: rubbleColor, fontFamily: "Opensans"),
      home: const IntroPage1(),
    );
  }
}

class IntroPage1 extends StatefulWidget {
  const IntroPage1({super.key});

  @override
  State<IntroPage1> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
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
            "We amp up \nthe party!",
            style: TextStyle(
              color: myWhite,
              fontSize: 48,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          Image.asset("images/intro.png"),
          const Spacer(),
          Text(
            "A variety of party games to \nmake the room go wild!",
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
              color: yellowButton,
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
                    return const IntroPage2();
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
