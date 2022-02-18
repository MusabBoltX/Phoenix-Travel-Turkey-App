import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/components/daybox.dart';

class Day5Screen extends StatefulWidget {
  final String day;
  final String temp;

  const Day5Screen({Key? key,
    required this.day,
    required this.temp,
  }) : super(key: key);

  @override
  _Day5ScreenState createState() => _Day5ScreenState();
}

class _Day5ScreenState extends State<Day5Screen> {
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
                    image: "assets/Hotels/d5.png",
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
    'Breakfast at Hotel\n\nCheck Out From Hotel\n\nKayseri Orientation Tour\n\nLunch at Kemal Kochak Restaurant Kayseri',
    'Departure Flight PC 2737 ASR-IST (Sabiha Airport)',
    'Departure Flight TK 2013 ASR-IST',
    'Arrival By PC 2737 (Karachi|Hyderabad|Sukkur|Quetta|Rawalpindi|Peshawar)',
    'Arrival By TK 2013 ( Lahore |Sahiwal|Multan |Faisalabad)\n\nMeet & Assist at Airport & Transfer to Intercontinental Hotel\n\nCheck Inn Formalities',
    'Transfer for Dinner at Alladin Restaurant With Entertainment\n\nTransfer Back to Hotel / Drop at Taksim\n\nOvernight at Hotel',
  ];
  final List<String> _hrs = [
    '1100Hrs',
    '1610Hrs ',
    '1655Hrs',
    '1735Hrs',
    '1820Hrs',
    '2030Hrs',
  ];
}
