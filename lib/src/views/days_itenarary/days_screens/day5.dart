import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/components/daybox.dart';

class Day5Screen extends StatefulWidget {
  const Day5Screen({Key? key}) : super(key: key);

  @override
  _Day5ScreenState createState() => _Day5ScreenState();
}

class _Day5ScreenState extends State<Day5Screen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
            itemCount: _hrs.length,
            itemBuilder: (context, index) {
              return DayScheduleCard(
                image: "assets/Hotels/d5.png",
                details: _details[index],
                hrs: _hrs[index],
              );
            }),
      ),
    );

  }

  final List<String> _details = [
    'Breakfast at Hotel\n\nCheck Out From Hotel\n\nKayseri Orientation Tour\n\nLunch at kemal Kock Restaurant Kayseri',
    'Departure Flight PC 2737 ASR-IST (Sabia Airport)',
    'Departure Flight TK 2013 ASR-IST',
    'Arrival By PC 2737 (Karachi|Hyderabad|Sukkur|Quetta|Rawalpindi|Peshawar)',
    'Arrival By TK 2013 ( Lahore |Sahiwal|Multan |Faisalabad)\n\nMeet & Assist at Airport & Transfer to Intercontinental Hotel\n\nCheck Inn Formalities',
    'Transfer for Dinner at Alladin Restaurant With Entertainment\n\nTransfer Back to Hotel / Drop at Taksim\n\nOver Night at Hotel',
  ];
  final List<String> _hrs = [
    '1100Hrs',
    '1610 hrs ',
    '1655Hrs',
    '1735Hrs',
    '1820Hrs',
    '2030Hrs',
  ];
}
