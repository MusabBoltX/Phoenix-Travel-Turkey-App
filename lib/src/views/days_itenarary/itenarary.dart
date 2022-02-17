import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/days_screens/day1.dart';
import 'package:phoenix_travel_app/src/views/days_screens/day2.dart';
import 'package:phoenix_travel_app/src/views/days_screens/day3.dart';
import 'package:phoenix_travel_app/src/views/days_screens/day4.dart';
import 'package:phoenix_travel_app/src/views/days_screens/day5.dart';
import 'package:phoenix_travel_app/src/views/days_screens/day6.dart';
import 'package:phoenix_travel_app/src/views/days_screens/day7.dart';
import 'package:phoenix_travel_app/src/views/days_screens/day8.dart';

class ItenararyScreen extends StatefulWidget {
  const ItenararyScreen({Key? key}) : super(key: key);

  @override
  _ItenararyScreenState createState() => _ItenararyScreenState();
}

class _ItenararyScreenState extends State<ItenararyScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 80,
              width: getProportionateScreenWidth(375.0),
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
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 20.0),
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
            ),

            /// center
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text("Itenarary"),
                ),
              ),
            ),
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
