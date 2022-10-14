import 'package:flutter/material.dart';
import 'package:rubblefrontend/compnents/common_button.dart';
import 'package:rubblefrontend/compnents/common_textfield.dart';
import 'package:rubblefrontend/game_select_page.dart';
import 'package:rubblefrontend/signup_page.dart';

import 'compnents/mycolors.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  TextEditingController nameController = TextEditingController();
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
          const Text(
            "Login now",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const Text(
            "\nWelcome back to Rubble! Enter your email address \nand your password to start your adventure!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(
            flex: 3,
          ),
          CommonTextField(name: "Email Adress"),
          const Spacer(),
          CommonTextField(name: "Password"),
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
          const Text(
            "Don’t have account yet?",
            style: TextStyle(
                color: Color.fromRGBO(105, 108, 117, 1), fontSize: 16),
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
