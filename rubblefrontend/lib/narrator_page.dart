import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rubblefrontend/components/narrator_steps.dart';
import 'package:rubblefrontend/villager_role_page.dart';
import "package:scrollable_positioned_list/scrollable_positioned_list.dart";
import 'components/common_button.dart';
import 'components/mycolors.dart';

class NarratorPage extends StatefulWidget {
  const NarratorPage({super.key});

  @override
  State<NarratorPage> createState() => _NarratorPageState();
}

class _NarratorPageState extends State<NarratorPage> {
  final itemController = CarouselController();
  final itemListener = ItemPositionsListener.create();
  /*Future scrollToItem(int index) async {
    itemController.scrollTo(
        index: index, alignment: 0.5, duration: const Duration(seconds: 1));
  }*/

  void next() => itemController.nextPage(duration: Duration(seconds: 1));

  @override
  void initState() {
    super.initState();

    //WidgetsBinding.instance!.addPostFrameCallback((_) => scrollToItem(1));

    itemListener.itemPositions.addListener(() {
      /*final indices =
          itemListener.itemPositions.value.map((item) => item.index).toList();
      debugPrint(indices.toString());*/
    });
  }

  int count = 0;
  bool isDone = false;
  List<NarratorSteps> daySteps = [
    NarratorSteps(
      image: Image.asset("images/maffia_icon.png"),
      step: const Text(
        "Wake up mafia",
        style: TextStyle(fontSize: 15),
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
              child: CarouselSlider.builder(
            itemCount: daySteps.length,
            itemBuilder: ((BuildContext context, int index, _) => ListTile(
                  shape: Border(bottom: BorderSide(color: myLightWhite)),
                  //dense: true,
                  title: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        /*const Spacer(
                            flex: 5,
                          ),*/
                        daySteps[index].step,
                        /*const Spacer(
                            flex: 5,
                          ),*/
                        daySteps[index].image,
                        /*const Spacer(
                            flex: 10,
                          ),*/
                        //daySteps[index].step,
                      ]),
                  tileColor: rubbleColor,
                  textColor: myWhite,
                  //visualDensity: const VisualDensity(vertical: 4),
                )),
            options: CarouselOptions(
              height: 20,
              initialPage: 0,
              scrollDirection: Axis.vertical,
              viewportFraction: 0.1,
            ),
            carouselController: itemController,
          )

              /*ScrollablePositionedList.builder(
              itemCount: daySteps.length,
              itemBuilder: ((context, index) => ListTile(
                    shape: Border(bottom: BorderSide(color: myLightWhite)),
                    dense: true,
                    title: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          /*const Spacer(
                            flex: 5,
                          ),*/
                          daySteps[index].step,
                          /*const Spacer(
                            flex: 5,
                          ),*/
                          daySteps[index].image,
                          /*const Spacer(
                            flex: 10,
                          ),*/
                          daySteps[index].step,
                        ]),
                    tileColor: rubbleColor,
                    textColor: myWhite,
                    visualDensity: VisualDensity(vertical: 4),
                    /*child: Container(
                    decoration: BoxDecoration(
                      color: rubbleColor,
                      border: Border(
                        top:  BorderSide(
                          color: myLightWhite, 
                        ),
                        bottom:  BorderSide(
                          color: myLightWhite, 
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        daySteps[index].step,
                        daySteps[index].image,
                        SizedBox(
                          height: 50,
                        ),
                      ],
                    ),*/
                    /*ListTile(
                      leading: daySteps[index].image,
                      title: daySteps[index].step,
                      tileColor: rubbleColor,
                      textColor: myWhite,
                      iconColor: myWhite,
                      ),
*/
                  )),
              itemScrollController: itemController,
              itemPositionsListener: itemListener,
            ),*/
              ),
          const SizedBox(
            height: 10,
          ),
          CommonButton(
              name: "Next",
              onPressed:
                  next /*() {
                count += 1;
                if (count <= 15) {
                  scrollToItem(count);
                } else {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const VillagerRolePage();
                      },
                    ),
                  );
                }
              }*/
              ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
      /*floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_upward_rounded),
        onPressed: () {
          count += 1;
          if (count <= 15) {
            scrollToItem(count);
          } else {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return const VillagerRolePage();
                },
              ),
            );
          }
        },
      ),*/
      /*Column(
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
            "It's day",
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
              itemCount: daySteps.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    leading: daySteps[index].image,
                    title: daySteps[index].step,
                    trailing: Checkbox(
                      value: daySteps[index].isDone,
                      onChanged: (bool? newBool) {
                        setState(() {
                          daySteps[index].isDone = newBool!;
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
      ),*/
    );
  }
}
