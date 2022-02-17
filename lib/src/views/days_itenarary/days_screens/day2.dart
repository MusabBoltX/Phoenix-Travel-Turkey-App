import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/components/daybox.dart';

class Day2Screen extends StatefulWidget {
  final String day;
  final String temp;

  const Day2Screen({
    Key? key,
    required this.day,
    required this.temp,
  }) : super(key: key);

  @override
  _Day2ScreenState createState() => _Day2ScreenState();
}

class _Day2ScreenState extends State<Day2Screen> {
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
                    image: "assets/Hotels/d2.png",
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
    'Breakfast at Hotel\n\nProceed to Bursa City Tour followed by visit to Orhan Ghazi, Usman Ghazi Tomb & Green Mosque.\n\nCable Car Ride to Ulludag Mountai Level-2 (Approx 40 Min Cable Car Ride)',
    'Arrival at Cable Car Station & Hote Tea & Coffee Will be Served at Grand Yazici Hotel  Hotel\n\nTime free to Explore Snowy mountain and Personal activities',
    'Buffet Lunch Will be Served at Grand Yazici Hotel\n\nTransfer Back to Bursa City Center by Cable Car\n\nDrop to Old Silk Market.\n\nTransfer Back to Hotel\n\nTime Free For Fresh Up & Personal Activites',
    'Transfer for Dinner at Kofteci Yusuf Restaurant\n\nTransfer Back to hotel\n\nOver Night at Hotel ',
    'Istanbul by TK 711 ISB-IST (47PAX) (RAWALPINDI |PESHAWAR)\n\nMeet & Assist at Airport  & Transfer to Bursa by Bus\n\nTransfer to Bursa\n\nEnroute Lunch at Oksijen Outlet Service Center (Lunch at Bursa  Kebap Restaurant )',
  ];

  final List<String> _hrs = [
    '1000hrs',
    '1200Hrs ',
    '1430Hrs',
    '2030Hrs ',
    '1035hrs',
  ];
}
