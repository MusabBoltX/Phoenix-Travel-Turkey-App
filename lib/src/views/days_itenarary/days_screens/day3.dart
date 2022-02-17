import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/components/daybox.dart';

class Day3Screen extends StatefulWidget {
  const Day3Screen({Key? key}) : super(key: key);

  @override
  _Day3ScreenState createState() => _Day3ScreenState();
}

class _Day3ScreenState extends State<Day3Screen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }

  final List<String> _details = [
    'Breakfast at Hotel\n\nCheck Out From Hotel ( Lahore |Sahiwal|Multan |Faisalabad)\n\nTransfer to Istanbul Airport for Departure Flight IST-ASR TK2012',
    'Arrival at Istanbul Airport\n\nCheck Inn For Flight TK 2012 IST-ASR\n\nLunch Allowance 150TL Will be Provided\n\nCheck Out From Hotel (Karachi|Hyderabad|Sukkur|Quetta|Rawalpindi|Peshawar)\n\nTransfer for Lunch at Yuce Hunkar',
    'Transfer to  Istanbul (Sabiha- Saw) Airport',
    'Arrival at Saw Airport\n\nCheck Inn for Flight PC 2738 SAW-ASR Flight',
    'Departure Flight SAW-ASR ',
    'Arrival By TK 2012 ( Lahore |Sahiwal|Multan |Faisalabad)\n\nMeet & Assist at Kayseri Airport\n\nTransfer to Cappadocia ',
    'Arrival at Double Tree Hilton\n\nCheck Inn Formalities',
    'Arrival By PC 2738 (Karachi|Hyderabad|Sukkur|Quetta|Rawalpindi|Peshawar)\n\nMeet & Assist at Kayseri Airport',
    'Transfer to Cappadocia\n\nDinner at Adeedaya Restaurant  for Both Groups\n\nCheck Inn at Double Tree Hilton\n\nOver Night at Hotel',
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
