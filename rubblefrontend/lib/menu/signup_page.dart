import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rubblefrontend/components/common_button.dart';
import 'package:rubblefrontend/components/common_textfield.dart';
import '../components/mycolors.dart';
import 'game_select_page.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final HttpLink httpLink = HttpLink("http://127.0.0.1:3000/graphql");

    final ValueNotifier<GraphQLClient> client = ValueNotifier<GraphQLClient>(
      GraphQLClient(
        link: httpLink,
        cache: GraphQLCache(),
      ),
    );

    return GraphQLProvider(
      client: client,
      child: const SignUpPage(),
    );
  }
}

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String query = r"""mutation {
                      addUser(
                        username: username, email: email, password: password, avatarURL: avatarURL, isGuest: false) {
                          username
                          email
                          password
                          avatarURL
                          isGuest
                      }
                    }""";

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
      body: Mutation(
        options: MutationOptions(
          document: gql(query),
          update: (GraphQLDataProxy cache, QueryResult? result) {
            return cache;
          },
        ),
        builder: (RunMutation insert, QueryResult? result) {
          return Center(
            child: Column(
              children: [
                const Spacer(
                  flex: 2,
                ),
                CommonTextField(
                  name: "Username",
                  controller: usernameController,
                ),
                const Spacer(),
                CommonTextField(
                    name: "Email Adress", controller: emailController),
                const Spacer(),
                CommonTextField(
                    name: "Password", controller: passwordController),
                const Spacer(),
                CommonButton(
                    name: "Create an Account",
                    onPressed: () {
                      insert(<String, dynamic>{
                        "username": usernameController.text,
                        "email": emailController.text,
                        "password": passwordController.text,
                        "avatarURL": "picture",
                        "isGuest": false,
                      });
                      debugPrint("test");
                      /*Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const GameSelectPage();
                          },
                        ),
                      );*/
                    }),
                const Spacer(
                  flex: 10,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
