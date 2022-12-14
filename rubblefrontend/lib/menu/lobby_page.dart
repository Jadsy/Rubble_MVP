import 'package:flutter/material.dart';
import 'package:rubblefrontend/components/common_button.dart';
import 'package:rubblefrontend/components/game_button.dart';
import 'package:rubblefrontend/components/mycolors.dart';
import 'package:rubblefrontend/services/StorageService.dart';

import '../action_pages/narrator_select_page.dart';

class LobbyPage extends StatefulWidget {
  const LobbyPage({super.key});

  @override
  State<LobbyPage> createState() => _LobbyPageState();
}

class _LobbyPageState extends State<LobbyPage> {
  final StorageService _storageService = StorageService();
  // User user = User(id: "", username: "");
  // late String username;
  var data = "";
  static const start = "typename: ";
  static const midle = ", _id:";
  static const end = "}";

  late int startIndex = data.indexOf(start);
  late int midleIndex = data.indexOf(midle, startIndex + start.length);
  late int endIndex = data.indexOf(end, midleIndex + midle.length);
  late String user = data.substring(startIndex + 3 * start.length, midleIndex);
  late String id = data.substring(midleIndex + midle.length, endIndex);
  @override
  void initState() {
    // user = _storageService.readSecureData("User");
    readData("User");
  }

  Future<String?> readData(String key) async {
    // final StorageService _storageService = StorageService();
    var readData = await _storageService.readSecureData(key);
    debugPrint("readData: $readData");

    setState(() {
      data = readData.toString();
    });
  }

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
          "Game #-id-",
          style: TextStyle(
            color: myWhite,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            "Share to join",
            style: TextStyle(
              color: myLightWhite,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          GameButton(
              mycolor: mafiaColor,
              txt: "Mafia",
              onTap: () {
                debugPrint("mafia");
              }),
          const Spacer(),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "     Players:",
              style: TextStyle(
                color: myWhite,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(user),
                  leading: Icon(
                    Icons.person,
                    color: myWhite,
                    size: 30,
                  ),
                  textColor: myWhite,
                );
              },
            ),
          ),
          const Spacer(
            flex: 5,
          ),
          CommonButton(
              name: "Start",
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const NarratorSelectPage();
                    },
                  ),
                );
              }),
          const Spacer(),
        ],
      ),
    );
  }
}
