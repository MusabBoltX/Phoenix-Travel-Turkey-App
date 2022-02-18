import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/components/daybox.dart';

class Day1Screen extends StatefulWidget {
  final String day;
  final String temp;

  const Day1Screen({
    Key? key,
    required this.day,
    required this.temp,
  }) : super(key: key);

  @override
  _Day1ScreenState createState() => _Day1ScreenState();
}

class _Day1ScreenState extends State<Day1Screen> {
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
                    image: "assets/Hotels/d1.png",
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
    'Arrival at  Istanbul by TK 711 ISB-IST (RAWALPINDI |PESHAWAR)\n\nMeet & assist at the airport\n\nTransfer to Bursa by bus\n\nEn-route Lunch at Bursa Kebap Restaurant.',
    'Arrival at Istanbul by TK 709 KHI-IST (KARACHI | HYDERABAD |SUKKUR |QUETTA )\n\nMeet & assist at the airport\n\nTransfer to Bursa by bus\n\nEn-route Lunch at Bursa Kebap Restaurant\n\nArrival at Bursa & Check Inn at Almira Hotel ',
    'Arrival at Istanbul by TK 715  LHE-IST (LAHORE   |SAHIWAL |GUJRANWALA )\n\nMeet & assist at the airport\n\nTransfer to Bursa by bus\n\nEn-route Lunch at Bursa Kebap Restaurant\n\nArrival at Bursa & Check Inn at Almira Hotel',
    'Arrival at Istanbul by EK 123 DXB-IST (MULTAN | FAISALABAD )\n\nMeet & Assist at Airport\n\nTransfer to Bursa. (Pack Fast Food Lunch Will be Served)\n\nCheck inn Formalities at Movenpick Hotel\n\nTime Free For Fresh Up & Personal Activities',
    'Meet & Assist at Airport\n\nTransfer to Bursa (Pack Fast Food Lunch Will be Served)\n\nCheck inn Formalities  (Movenpick Hotel)   \n\nTime Free For Fresh Up & Personal Activities.\n\nCheck inn Fomralities  (Movenpick Hotel)\n\nTime Free For Fresh Up & Personal Activities',
    'Dinner at Almirah Hotel\n\nOvernight at Hotel',
  ];
  final List<String> _hrs = [
    '1035Hrs',
    '1120Hrs',
    '1220Hrs',
    '1425Hrs',
    '1530Hrs',
    '2000-2200Hrs',
  ];
}
