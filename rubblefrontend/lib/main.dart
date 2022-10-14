import 'package:flutter/material.dart';
import 'package:rubblefrontend/intro_page_two.dart';
import 'compnents/common_button.dart';

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
          scaffoldBackgroundColor: const Color.fromRGBO(5, 11, 24, 1)),
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
          const Text(
            "We amp up \nthe party!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 48,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          Image.asset("images/intro.png"),
          const Spacer(),
          const Text(
            "A variety of party games to \nmake the room go wild!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Spacer(
                  flex: 10,
                ),
                Icon(
                  Icons.circle,
                  color: Color.fromRGBO(244, 209, 68, 1),
                  size: 10,
                ),
                Spacer(),
                Icon(
                  Icons.circle,
                  color: Color.fromRGBO(31, 36, 48, 1),
                  size: 10,
                ),
                Spacer(),
                Icon(
                  Icons.circle,
                  color: Color.fromRGBO(31, 36, 48, 1),
                  size: 10,
                ),
                Spacer(
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
