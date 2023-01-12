import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rubblefrontend/components/common_button.dart';
import 'package:rubblefrontend/components/common_textfield.dart';
import 'package:rubblefrontend/menu/game_select_page.dart';

import '../components/mycolors.dart';
import '../services/StorageService.dart';
import 'signup_page.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final StorageService _storageService = StorageService();

  String query = """query Login(\$email: String!, \$password: String!) {
    Login(email: \$email, password: \$password) {
      username
      _id
    }
  }
""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Mutation(
        options: MutationOptions(
          document: gql(query),
          update: (GraphQLDataProxy cache, QueryResult? result) {
            debugPrint(result?.data!.toString());
            var user = result!.data!["Login"].toString();
            _storageService.writeSecureData(StorageItem("User", user));
            // return cache;
          },
        ),
        builder: (RunMutation insert, QueryResult? result) {
          return Center(
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
              CommonTextField(
                  name: "Email Address", controller: emailController),
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
                    insert(<String, dynamic>{
                      "email": emailController.text,
                      "password": passwordController.text,
                    });
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
          ));
        },
      ),
    );
  }
}
