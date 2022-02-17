import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/components/daybox.dart';

class Day1Screen extends StatefulWidget {
  const Day1Screen({Key? key}) : super(key: key);

  @override
  _Day1ScreenState createState() => _Day1ScreenState();
}

class _Day1ScreenState extends State<Day1Screen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }

  final List<String> _details = [
    'Arrival Istanbul by TK 711 ISB-IST (47PAX) (RAWALPINDI |PESHAWAR)\n\Meet & Assist at Airport  & Transfer to Bursa by Bus\n\nTransfer to Bursa\n\nTransfer to Bursa Enroute Lunch at Oksijen Outlet Service Center (Lunch at Bursa  Kebap Restaurant )',
    'Arrival istanbul TK 709 KHI-IST (KARACHI | HYDERABAD |SUKKUR |QUETTA )\n\nMeet & Assist at Airport  & Transfer to Bursa by Bus\n\nTransfer to Bursa Enroute Lunch at Oksijen Outlet Service Center (Lunch at Bursa  Kebap Restaurant )\n\nArrival at Bursa & Check Inn at Almira Hotel ',
    'Arrival istanbul TK 715  LHE-IST (LAHORE   |SAHIWAL |GUJRANWALA )\n\nMeet & Assist at Airport  & Transfer to Bursa by Bus\n\nTransfer to Bursa Enroute Lunch at Oksijen Outlet Service Center (Lunch at Bursa  Kebap Restaurant )\n\nArrival at Bursa & Check Inn at Almira Hotel',
    'ARRIVAL BY EK 123 DXB-IST (MULTAN | FAISALABAD )',
    'Meet & Assist at Airport  & Transfer to Bursa by Bus\n\nTransfer to Bursa (Pack Lunch Will be Served)\n\nCheck inn Fomralities  (Movenpick Hotel)\n\nTime Free For Fresh Up & Personal Activites\n\nDinner at Hotel\n\nOver Night at Hotel',
  ];
  final List<String> _hrs = [
    '1035hrs',
    '1120Hrs',
    '1220HRS',
    '1425HRS',
    '1930Hrs',
  ];
}