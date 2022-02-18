import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/components/daybox.dart';

class Day7Screen extends StatefulWidget {
  final String day;
  final String temp;

  const Day7Screen({Key? key,
    required this.day,
    required this.temp,
  }) : super(key: key);

  @override
  _Day7ScreenState createState() => _Day7ScreenState();
}

class _Day7ScreenState extends State<Day7Screen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 12.0, right: 12.0, top: 8.0, bottom: 8.0),
                  child: Text(
                    widget.day,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.visible,
                    style: TextStyle(
                      color: basePurpleDark,
                      fontWeight: FontWeight.w800,
                      // fontSize: 16,
                    ),
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 12.0, right: 12.0, top: 8.0, bottom: 8.0),
                  child: Text(
                    widget.temp,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.visible,
                    style: TextStyle(
                      color: basePurpleDark,
                      fontWeight: FontWeight.w800,
                      // fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        SizedBox(
          height: getProportionateScreenHeight(480.0),

          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.builder(
                itemCount: _hrs.length,
                itemBuilder: (context, index) {
                  return DayScheduleCard(
                    image: "assets/Hotels/d7.png",
                    details: _details[index],
                    hrs: _hrs[index],
                  );
                }),
          ),
        ),
      ],
    );

  }

  final List<String> _details = [
    'Breakfast at Hotel',
    'Day Free For Shopping & Personal activities With Lunch Allowance',
    'Transfer to Pier For Bosphorus Dinner Cruise',
    'Bosphorus Dinner Cruise With Entertainment\n\nTransfer Back to Hotel',
  ];

  final List<String> _hrs = [
    '0830Hrs',
    '1030Hrs',
    '2000Hrs',
    '2030-2330Hrs',
  ];
}
