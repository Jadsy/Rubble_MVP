import 'package:flutter/material.dart';
import 'package:rubblefrontend/components/narrator_steps.dart';
import 'package:rubblefrontend/villager_role_page.dart';

import 'components/common_button.dart';
import 'components/mycolors.dart';

class NarratorDayPage extends StatefulWidget {
  const NarratorDayPage({super.key});

  @override
  State<NarratorDayPage> createState() => _NarratorDayPageState();
}

class _NarratorDayPageState extends State<NarratorDayPage> {
  bool isDone = false;

  List<NarratorSteps> DaySteps = [
    NarratorSteps(
      image: Image.asset("images/villager_icon.png"),
      step: const Text("People debate"),
    ),
    NarratorSteps(
      image: Image.asset("images/villager_icon.png"),
      step: const Text("People vote"),
    ),
    NarratorSteps(
      image: Image.asset("images/villager_icon.png"),
      step: const Text("A person dies"),
    ),
    NarratorSteps(
      image: Image.asset("images/maffia_icon.png"),
      step: const Text("Switch to night"),
    ),
  ];

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
          "Narrator",
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
            "You are the narrator, follow the \ninstructions on the screen. The timer \nshows you how long a round takes.",
            style: TextStyle(
              color: myLightWhite,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            "It's Day",
            style: TextStyle(
              color: myWhite,
              fontSize: 48,
              fontWeight: FontWeight.bold,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "     Steps:",
              style: TextStyle(
                color: myLightWhite,
                fontSize: 16,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: DaySteps.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    leading: DaySteps[index].image,
                    title: DaySteps[index].step,
                    trailing: Checkbox(
                      value: DaySteps[index].isDone,
                      onChanged: (bool? newBool) {
                        setState(() {
                          DaySteps[index].isDone = newBool!;
                        });
                      },
                      checkColor: rubbleColor,
                      activeColor: myWhite,
                      side: MaterialStateBorderSide.resolveWith(
                        (states) => BorderSide(width: 1.0, color: myWhite),
                      ),
                    ),
                    tileColor: rubbleColor,
                    textColor: myWhite,
                    iconColor: myWhite,
                  ),
                );
              },
            ),
          ),
          CommonButton(
              name: "day",
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const VillagerRolePage();
                    },
                  ),
                );
              })
        ],
      ),
    );
  }
}
