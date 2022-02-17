import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/components/daybox.dart';

class Day7Screen extends StatefulWidget {
  const Day7Screen({Key? key}) : super(key: key);

  @override
  _Day7ScreenState createState() => _Day7ScreenState();
}

class _Day7ScreenState extends State<Day7Screen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );

  }

  final List<String> _details = [
    'Breakfast at Hotel\n\nDay Free For Shopping & Personal activities With Lunch Allowance 150 TL',
    'Transfer to Pier For Bosphorus Dinner Cruise',
    'Bosphorus Dinner Cruise With Entertainment\n\nTransfer Back to Hotel',
  ];

  final List<String> _hrs = [
    '1030Hrs',
    '2000Hrs',
    '2030-2330Hrs',
  ];
}