import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rubblefrontend/components/mystopwatch.dart';
import 'package:rubblefrontend/components/narrator_steps.dart';
import 'package:rubblefrontend/role_pages/villager_role_page.dart';
import "package:scrollable_positioned_list/scrollable_positioned_list.dart";
import '../components/common_button.dart';
import '../components/mycolors.dart';

class NarratorPage extends StatefulWidget {
  const NarratorPage({super.key});

  @override
  State<NarratorPage> createState() => _NarratorPageState();
}

class _NarratorPageState extends State<NarratorPage> {
  final itemController = CarouselController();
  final itemListener = ItemPositionsListener.create();

  void next() {
    itemController.nextPage(duration: const Duration(seconds: 1));
    setState(() {});
    count += 1;
  }

  int count = 1;
  bool isDone = false;
  List<NarratorSteps> daySteps = [
    NarratorSteps(
      image: Image.asset("images/maffia_icon.png"),
      step: const Text(
        "Wake up mafia",
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    ),
    NarratorSteps(
      image: Image.asset("images/maffia_icon.png"),
      step: const Text(
        "Mafia pick a victim",
        style: TextStyle(fontSize: 15),
      ),
    ),
    NarratorSteps(
      image: Image.asset("images/maffia_icon.png"),
      step: const Text(
        "Mafia goes to sleep",
        style: TextStyle(fontSize: 15),
      ),
    ),
    NarratorSteps(
      image: Image.asset("images/police_icon.png"),
      step: const Text(
        "Wake up police",
        style: TextStyle(fontSize: 15),
      ),
    ),
    NarratorSteps(
      image: Image.asset("images/police_icon.png"),
      step: const Text(
        "Police checks a person (1/1)",
        style: TextStyle(fontSize: 15),
      ),
    ),
    NarratorSteps(
      image: Image.asset("images/police_icon.png"),
      step: const Text(
        "Police goes to sleep",
        style: TextStyle(fontSize: 15),
      ),
    ),
    NarratorSteps(
      image: Image.asset("images/doctor_icon.png"),
      step: const Text(
        "Wake up doctor",
        style: TextStyle(fontSize: 15),
      ),
    ),
    NarratorSteps(
      image: Image.asset("images/doctor_icon.png"),
      step: const Text(
        "Doctor saves person  (1/1)",
        style: TextStyle(fontSize: 15),
      ),
    ),
    NarratorSteps(
      image: Image.asset("images/doctor_icon.png"),
      step: const Text(
        "Doctor goes to sleep",
        style: TextStyle(fontSize: 15),
      ),
    ),
    NarratorSteps(
      image: Image.asset("images/villager_icon.png"),
      step: const Text(
        "A person dies",
        style: TextStyle(fontSize: 15),
      ),
    ),
    NarratorSteps(
      image: Image.asset("images/villager_icon.png"),
      step: const Text(
        "Switch to day",
        style: TextStyle(fontSize: 15),
      ),
    ),
    NarratorSteps(
      image: Image.asset("images/villager_icon.png"),
      step: const Text(
        "People debate",
        style: TextStyle(fontSize: 15),
      ),
    ),
    NarratorSteps(
      image: Image.asset("images/villager_icon.png"),
      step: const Text(
        "People vote",
        style: TextStyle(fontSize: 15),
      ),
    ),
    NarratorSteps(
      image: Image.asset("images/villager_icon.png"),
      step: const Text(
        "A person dies",
        style: TextStyle(fontSize: 15),
      ),
    ),
    NarratorSteps(
      image: Image.asset("images/maffia_icon.png"),
      step: const Text(
        "Switch to night",
        style: TextStyle(fontSize: 15),
      ),
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
          const MyStopWatch(),
          /*Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "     Steps:",
              style: TextStyle(
                color: myLightWhite,
                fontSize: 16,
              ),
            ),
          ),*/
          const SizedBox(
            height: 15,
          ),
          Expanded(
              child: CarouselSlider.builder(
            itemCount: daySteps.length,
            itemBuilder: ((BuildContext context, int index, _) => Card(
                  key: ValueKey(daySteps[index].step),
                  shape: Border(bottom: BorderSide(color: myLightWhite)),
                  color: isDone ? yellowButton : rubbleColor,
                  child: Column(
                    children: [
                      ListTile(
                        title: daySteps[index].step,
                        leading: daySteps[index].image,
                        textColor: myWhite,
                      ),
                      const Spacer()
                    ],
                  ),
                )),
            options: CarouselOptions(
              height: 20,
              initialPage: 0,
              scrollDirection: Axis.vertical,
              viewportFraction: 0.14,
              scrollPhysics: const NeverScrollableScrollPhysics(),
              reverse: false,
            ),
            carouselController: itemController,
          )),
          const SizedBox(
            height: 10,
          ),
          CommonButton(
              name: "Next",
              onPressed: () {
                if (count <= 15) {
                  next();
                } else {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const VillagerRolePage();
                      },
                    ),
                  );
                }
              }),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
