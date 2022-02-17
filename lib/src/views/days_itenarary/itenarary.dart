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
  const ItenararyScreen({
    Key? key,
  }) : super(key: key);

  @override
  _ItenararyScreenState createState() => _ItenararyScreenState();
}

class _ItenararyScreenState extends State<ItenararyScreen> {
  int selectedIndex = 0;
  bool d1 = true;
  bool d2 = false;
  bool d3 = false;
  bool d4 = false;
  bool d5 = false;
  bool d6 = false;
  bool d7 = false;
  bool d8 = false;

  bool t1 = true;
  bool t2 = false;
  bool t3 = false;
  bool t4 = false;
  bool t5 = false;
  bool t6 = false;
  bool t7 = false;
  bool t8 = false;

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
                          fontSize: 24,
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
            if (selectedIndex == 0)
              Day1Screen(day: dateList[0], temp: tempList[0],)
            else if (selectedIndex == 1)
              Day2Screen(day: dateList[1], temp: tempList[1],)
            else if (selectedIndex == 2)
              Day3Screen(day: dateList[2], temp: tempList[2],)
            else if (selectedIndex == 3)
              Day4Screen(day: dateList[3], temp: tempList[3],)
            else if (selectedIndex == 4)
              Day5Screen(day: dateList[4], temp: tempList[4],)
            else if (selectedIndex == 5)
              Day6Screen(day: dateList[5], temp: tempList[5],)
            else if (selectedIndex == 6)
              Day7Screen(day: dateList[6], temp: tempList[6],)
            else if (selectedIndex == 7)
              Day8Screen(day: dateList[7], temp: tempList[7],)

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

  final List<String> tempList = [
    '18 °C / 7 °C',
    '13 °C / 4 °C',
    '9 °C / -2 °C',
    '6 °C / -4 °C',
    '9 °C / 4 °C',
    '11 °C / 4 °C',
    '11 °C / 5 °C',
    '10 °C / 4 °C',
  ];

  final List<String> dateList = [
    '21 February 2022',
    '22 February 2022',
    '23 February 2022',
    '24 February 2022',
    '25 February 2022',
    '26 February 2022',
    '27 February 2022',
    '28 February 2022',
  ];

}
