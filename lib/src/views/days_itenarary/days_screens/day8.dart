import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/components/daybox.dart';

class Day8Screen extends StatefulWidget {
  final String day;
  final String temp;

  const Day8Screen({Key? key,
    required this.day,
    required this.temp,
  }) : super(key: key);

  @override
  _Day8ScreenState createState() => _Day8ScreenState();
}

class _Day8ScreenState extends State<Day8Screen> {
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
                    image: "assets/Hotels/d8.png",
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
    'Breakfast at Hotel\n\nCheck Out From Hotel\n\nVisit Ayub Ansari\n\nDrop for Shopping Olivium Mall With Lunch Allowance\n\nTransfer to Istanbul Airport As Per Respective  Respective Flight ',
    'Departure Flight   EK 122 IST-DXB  (Multan | Faisalabad Group)',
    'Departure Flight TK 708 IST-KHI\n\n( Karchi | Hyderabad | Sukkur |Quetaa)',
    'Departure Flight TK 710 IST-ISB (Rawalpindi |Peshawar )',
    'Departure Flight TK 718 IST-LHE (Lahore | Sahiwal | Gujranwala )',
  ];
  final List<String> _hrs = [
    '1000Hrs',
    '2005Hrs',
    '2050Hrs',
    '2125Hrs',
    '2235Hrs',
  ];
}
