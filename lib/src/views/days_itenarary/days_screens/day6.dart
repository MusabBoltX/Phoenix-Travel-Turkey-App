import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/components/daybox.dart';

class Day6Screen extends StatefulWidget {
  const Day6Screen({Key? key}) : super(key: key);

  @override
  _Day6ScreenState createState() => _Day6ScreenState();
}

class _Day6ScreenState extends State<Day6Screen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
            itemCount: _hrs.length,
            itemBuilder: (context, index) {
              return DayScheduleCard(
                image: "assets/Hotels/d6.png",
                details: _details[index],
                hrs: _hrs[index],
              );
            }),
      ),
    );

  }

  final List<String> _details = [
    'Breakfast at Hotel\n\nTransfer to Sogut\n\nVisit the Famous Ertugul Ghazi Tomb & Mosque & Adabali tomb & Turgut tomb & Inegol City & Bilecik City  ',
    'Lunch at Sofra Restaurant.',
    'Transfer Back to Istanbul',
    'Arrival at Istanbul\n\nEvening Transfer for Shopping With Dinner Allowance 150 TL\n\nOver Night at Hotel ',
  ];
  final List<String> _hrs = [
    '0900Hrs',
    '1300Hrs',
    '1500Hrs',
    '1700Hrs',
  ];
}
