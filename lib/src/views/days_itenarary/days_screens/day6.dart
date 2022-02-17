import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/components/daybox.dart';

class Day6Screen extends StatefulWidget {
  final String day;
  final String temp;

  const Day6Screen({Key? key,
    required this.day,
    required this.temp,
  }) : super(key: key);

  @override
  _Day6ScreenState createState() => _Day6ScreenState();
}

class _Day6ScreenState extends State<Day6Screen> {
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
                    image: "assets/Hotels/d6.png",
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
    'Breakfast at Hotel\n\nTransfer to Sogut\n\nVisit the Famous Ertugul Ghazi Tomb & Mosque & Adabali tomb & Turgut tomb & Inegol City & Bilecik City  ',
    'Tranfer Sogut city visit Ertugrul ghazi Tomb and Mosque',
    'Lunch at Sofra Restaurant.',
    'Transfer Back to Istanbul',
    'Adabali tomb & Turgut tomb & Inegol City & Bilecik City  ',
    'Transfer at Istanbul',
    'Arrival at Istanbul\n\nEvening Transfer for Shopping With Dinner Allowance\n\nOver Night at Hotel ',
  ];
  final List<String> _hrs = [
    '0900Hrs',
    '1000Hrs',
    '1300Hrs',
    '1500Hrs',
    '1400Hrs',
    '1700Hrs',
    '1900Hrs',
  ];
}
