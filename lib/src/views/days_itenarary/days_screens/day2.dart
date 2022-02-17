import 'package:flutter/cupertino.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/components/daybox.dart';

class Day2Screen extends StatefulWidget {
  const Day2Screen({Key? key}) : super(key: key);

  @override
  _Day2ScreenState createState() => _Day2ScreenState();
}

class _Day2ScreenState extends State<Day2Screen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }

  final List<String> _details = [
    'Breakfast at Hotel\n\nProceed to Bursa City Tour followed by visit to Orhan Ghazi, Usman Ghazi Tomb & Green Mosque.\n\nCable Car Ride to Ulludag Mountai Level-2 (Approx 40 Min Cable Car Ride)',
    'Arrival at Cable Car Station & Hote Tea & Coffee Will be Served at Grand Yazici Hotel  Hotel\n\nTime free to Explore Snowy mountain and Personal activities',
    'Buffet Lunch Will be Served at Grand Yazici Hotel\n\nTransfer Back to Bursa City Center by Cable Car\n\nDrop to Old Silk Market.\n\nTransfer Back to Hotel\n\nTime Free For Fresh Up & Personal Activites',
    'Transfer for Dinner at Kofteci Yusuf Restaurant\n\nTransfer Back to hotel\n\nOver Night at Hotel ',
    'Arrival Istanbul by TK 711 ISB-IST (47PAX) (RAWALPINDI |PESHAWAR)\n\nMeet & Assist at Airport  & Transfer to Bursa by Bus\n\nTransfer to Bursa\n\nEnroute Lunch at Oksijen Outlet Service Center (Lunch at Bursa  Kebap Restaurant )',
  ];

  final List<String> _hrs = [
    '1000hrs',
    '1200Hrs ',
    '1430Hrs',
    '2030Hrs ',
    '1035hrs',
  ];
}
