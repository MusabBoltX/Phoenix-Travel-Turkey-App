import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/components/daybox.dart';

class Day3Screen extends StatefulWidget {
  final String day;
  final String temp;

  const Day3Screen({
    Key? key,
    required this.day,
    required this.temp,
  }) : super(key: key);

  @override
  _Day3ScreenState createState() => _Day3ScreenState();
}

class _Day3ScreenState extends State<Day3Screen> {
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
                    image: "assets/Hotels/d3.png",
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
    'Breakfast at Hotel\n\nCheck Out From Hotel ( Lahore |Sahiwal|Multan |Faisalabad)\n\nTransfer to Istanbul Airport for Departure Flight IST-ASR TK2012',
    'Arrival at Istanbul Airport\n\nCheck Inn For Flight TK 2012 IST-ASR\n\nLunch Allowance Will be Provided\n\nCheck Out From Hotel (Karachi|Hyderabad|Sukkur|Quetta|Rawalpindi|Peshawar)\n\nTransfer for Lunch at Yuce Hunkar',
    'Transfer to  Istanbul (Sabiha- Saw) Airport',
    'Arrival at Saw Airport\n\nCheck Inn for Flight PC 2738 SAW-ASR Flight',
    'Departure Flight SAW-ASR ',
    'Arrival By TK 2012 ( Lahore |Sahiwal|Multan |Faisalabad)\n\nMeet & Assist at Kayseri Airport\n\nTransfer to Cappadocia ',
    'Arrival at Double Tree Hilton\n\nCheck Inn Formalities',
    'Arrival By PC 2738 (Karachi|Hyderabad|Sukkur|Quetta|Rawalpindi|Peshawar)\n\nMeet & Assist at Kayseri Airport',
    'Transfer to Cappadocia\n\nDinner at Adeedaya Restaurant  for all Groups\n\nCheck Inn at Double Tree Hilton\n\nOver Night at Hotel',
  ];

  final List<String> _hrs = [
    '0900Hrs',
    '1200Hrs',
    '1400Hrs',
    '1600Hrs',
    '1845Hrs ',
    '1605Hrs ',
    '1945Hrs',
    '2030Hrs ',
  ];
}
