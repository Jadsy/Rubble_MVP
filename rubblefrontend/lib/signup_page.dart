import 'package:flutter/material.dart';
import 'package:rubblefrontend/components/common_button.dart';
import 'package:rubblefrontend/components/common_textfield.dart';
import 'package:rubblefrontend/game_select_page.dart';

import 'components/mycolors.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
          "Create an Account",
          style: TextStyle(
            color: myWhite,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          const Spacer(
            flex: 2,
          ),
          CommonTextField(name: "Username"),
          const Spacer(),
          CommonTextField(name: "Email Adress"),
          const Spacer(),
          CommonTextField(name: "Password"),
          const Spacer(),
          CommonButton(
              name: "Create an Account",
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
            flex: 10,
          ),
        ],
      )),
    );
  }
}
