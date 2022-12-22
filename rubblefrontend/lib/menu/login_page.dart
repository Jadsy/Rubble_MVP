import 'package:flutter/material.dart';
import 'package:rubblefrontend/components/common_button.dart';
import 'package:rubblefrontend/components/common_textfield.dart';
import 'package:rubblefrontend/menu/game_select_page.dart';

import '../components/mycolors.dart';
import 'signup_page.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          const Spacer(
            flex: 3,
          ),
          Text(
            "Login now",
            style: TextStyle(
              color: myWhite,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            "\nWelcome back to Rubble! Enter your email address \nand your password to start your adventure!",
            style: TextStyle(
              color: myWhite,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(
            flex: 3,
          ),
          CommonTextField(name: "Email Adress", controller: usernameController),
          const Spacer(),
          CommonTextField(
            name: "Password",
            controller: passwordController,
          ),
          const Spacer(
            flex: 4,
          ),
          CommonButton(
              name: "Login now",
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const GameSelectPage();
                    },
                  ),
                );
              }),
          const Spacer(
            flex: 7,
          ),
          Text(
            "Don’t have account yet?",
            style: TextStyle(color: myWhite, fontSize: 16),
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const SignUpPage();
                    },
                  ),
                );
              },
              child: Text(
                "Create one",
                style: TextStyle(color: yellowButton, fontSize: 16),
              ))
        ],
      )),
    );
  }
}
