import 'package:flutter/material.dart';
import 'package:rubblefrontend/components/common_button.dart';
import 'package:rubblefrontend/components/narrator_steps.dart';
import 'package:rubblefrontend/narrator_day_page.dart';

import 'components/mycolors.dart';

class NarratorNightPage extends StatefulWidget {
  const NarratorNightPage({super.key});

  @override
  State<NarratorNightPage> createState() => _NarratorNightPageState();
}

class _NarratorNightPageState extends State<NarratorNightPage> {
  bool isDone = false;

  List<NarratorSteps> NightSteps = [
    NarratorSteps(
      image: Image.asset("images/maffia_icon.png"),
      step: const Text("Wake up mafia"),
    ),
    NarratorSteps(
      image: Image.asset("images/maffia_icon.png"),
      step: const Text("Mafia pick a victim"),
    ),
    NarratorSteps(
      image: Image.asset("images/maffia_icon.png"),
      step: const Text("Mafia goes to sleep"),
    ),
    NarratorSteps(
      image: Image.asset("images/police_icon.png"),
      step: const Text("Wake up police"),
    ),
    NarratorSteps(
      image: Image.asset("images/police_icon.png"),
      step: const Text("Police checks a person (1/1)"),
    ),
    NarratorSteps(
      image: Image.asset("images/police_icon.png"),
      step: const Text("Police goes to sleep"),
    ),
    NarratorSteps(
      image: Image.asset("images/doctor_icon.png"),
      step: const Text("Wake up doctor"),
    ),
    NarratorSteps(
      image: Image.asset("images/doctor_icon.png"),
      step: const Text("Doctor saves person  (1/1)"),
    ),
    NarratorSteps(
      image: Image.asset("images/doctor_icon.png"),
      step: const Text("Doctor goes to sleep"),
    ),
    NarratorSteps(
      image: Image.asset("images/villager_icon.png"),
      step: const Text("A person dies"),
    ),
    NarratorSteps(
      image: Image.asset("images/villager_icon.png"),
      step: const Text("Switch to day"),
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
            "It's Night",
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
              itemCount: NightSteps.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    leading: NightSteps[index].image,
                    title: NightSteps[index].step,
                    trailing: Checkbox(
                      value: NightSteps[index].isDone,
                      onChanged: (bool? newBool) {
                        setState(() {
                          NightSteps[index].isDone = newBool!;
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
                      return const NarratorDayPage();
                    },
                  ),
                );
              })
        ],
      ),
    );
  }
}
