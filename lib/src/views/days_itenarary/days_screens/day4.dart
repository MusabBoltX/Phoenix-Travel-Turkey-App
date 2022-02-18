import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/components/daybox.dart';

class Day4Screen extends StatefulWidget {
  final String day;
  final String temp;

  const Day4Screen({Key? key,
    required this.day,
    required this.temp,
  }) : super(key: key);

  @override
  _Day4ScreenState createState() => _Day4ScreenState();
}

class _Day4ScreenState extends State<Day4Screen> {
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
                    image: "assets/Hotels/d4.png",
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
    'Proceed for Hot Air Balloon Ride  (Subject to Weather Condition )',
    'Transfer Back to Hotel\n\nBreakfast at Hotel',
    'Full Day Cappadocia Sightseeing Tour With 02 Hours Jeep Safari tour\n\nLunch at Uranos Cave Restaurant',
    'Transfer Back to Hotel',
    'Transfer for Turkish Night Dinner With Entertainment at Evranos Restaurant.\n\nTransfer Back to Hotel\n\nOvernight at Hotel',
  ];
  final List<String> _hrs = [
    '0600-0630Hrs',
    '0830Hrs',
    '1030Hrs',
    '1230Hrs',
    '2000Hrs',
  ];
}
