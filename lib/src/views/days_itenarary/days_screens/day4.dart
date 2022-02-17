import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/components/daybox.dart';

class Day4Screen extends StatefulWidget {
  const Day4Screen({Key? key}) : super(key: key);

  @override
  _Day4ScreenState createState() => _Day4ScreenState();
}

class _Day4ScreenState extends State<Day4Screen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );

  }


  final List<String> _details = [
    'Proceed for Hot Air Balloon Ride  (Subject to Weather Condition )',
    'Transfer Back to Hotel\n\nBreakfast at Hotel',
    'FullDay Cappadocia Sightseeing Tour With 02 Hour Jeep Safari tour\n\nLunch at Uranos Cave Restaurant',
    'Transfer Back to Hotel',
    'Transfer for Turkish Night Dinner  With Entertainment\n\nTransfer Back to Hotel\n\nOver Night at Hotel',
  ];
  final List<String> _hrs = [
    '0600-0630',
    '0830Hrs',
    '1030Hrs',
    '1230Hrs',
    '2000Hrs',
  ];
}
