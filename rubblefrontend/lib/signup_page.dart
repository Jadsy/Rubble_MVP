import 'package:flutter/material.dart';
import 'package:rubblefrontend/compnents/common_button.dart';
import 'package:rubblefrontend/compnents/common_textfield.dart';
import 'package:rubblefrontend/game_select_page.dart';

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
        backgroundColor: const Color.fromRGBO(5, 11, 24, 1),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        title: const Text(
          "Create an Account",
          style: TextStyle(
            color: Colors.white,
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
