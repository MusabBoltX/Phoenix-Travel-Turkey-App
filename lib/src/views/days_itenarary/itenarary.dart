import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/days_screens/day1.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/days_screens/day2.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/days_screens/day3.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/days_screens/day4.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/days_screens/day5.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/days_screens/day6.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/days_screens/day7.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/days_screens/day8.dart';

class ItenararyScreen extends StatefulWidget {
  const ItenararyScreen({Key? key}) : super(key: key);

  @override
  _ItenararyScreenState createState() => _ItenararyScreenState();
}

class _ItenararyScreenState extends State<ItenararyScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              // height: 80,
              // width: getProportionateScreenWidth(375.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(40.0),
                  bottomLeft: Radius.circular(40.0),
                ),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    baseBlackPure,
                    basePurpleDark,
                  ],
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 20.0),
                          child: Icon(
                            Icons.arrow_back_rounded,
                            size: 30,
                            color: baseWhitePlain,
                          ),
                        ),
                      ),
                      Text(
                        "Tour Itinerary",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: baseWhitePlain,
                          fontSize: 28,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            _dayCard(daysList[0], 0),
                            _dayCard(daysList[1], 1),
                            _dayCard(daysList[2], 2),
                            _dayCard(daysList[3], 3),
                            _dayCard(daysList[4], 4),
                            _dayCard(daysList[5], 5),
                            _dayCard(daysList[6], 6),
                            _dayCard(daysList[7], 7),
                          ],
                        )),
                  ),
                ],
              ),
            ),

            /// center
            selectedIndex == 0
                ? const Day1Screen()
                : selectedIndex == 1
                    ? const Day2Screen()
                    : selectedIndex == 2
                        ? const Day3Screen()
                        : selectedIndex == 3
                            ? const Day4Screen()
                            : selectedIndex == 4
                                ? const Day5Screen()
                                : selectedIndex == 5
                                    ? const Day6Screen()
                                    : selectedIndex == 6
                                        ? const Day7Screen()
                                        : selectedIndex == 7
                                            ? const Day8Screen()
                                            : Container(),

            /// center
          ],
        ),
        bottomNavigationBar: Container(
          color: baseWhitePlain,
          width: getProportionateScreenWidth(375.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: getProportionateScreenWidth(120.0),
                child: Image.asset(
                  "assets/logo.png",
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(120.0),
                child: Image.asset(
                  "assets/bottom_icn.png",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _dayCard(day, i) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = i;
        });
      },
      child: Card(
        color: selectedIndex == i ? basePurpleDark : baseWhitePlain,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
        child: Padding(
          padding: const EdgeInsets.only(
              left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
          child: Text(
            day,
            textAlign: TextAlign.center,
            overflow: TextOverflow.visible,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: selectedIndex == i ? baseWhitePlain : basePurpleDark,
              // fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }

  List<String> daysList = [
    'Day 01',
    'Day 02',
    'Day 03',
    'Day 04',
    'Day 05',
    'Day 06',
    'Day 07',
    'Day 08',
  ];

  List<String> dayImages = [
    'assets/day1.png',
    'assets/day2.png',
    'assets/day3.png',
    'assets/day3.png',
    'assets/day3.png',
    'assets/day3.png',
    'assets/day3.png',
    'assets/day3.png',
  ];

  List routeName = [
    const Day1Screen(),
    const Day2Screen(),
    const Day3Screen(),
    const Day4Screen(),
    const Day5Screen(),
    const Day6Screen(),
    const Day7Screen(),
    const Day8Screen(),
  ];
}
