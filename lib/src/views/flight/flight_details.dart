import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/flight/components/flight_details_card.dart';

class FlightDetailsScreen extends StatefulWidget {
  const FlightDetailsScreen({Key? key}) : super(key: key);

  @override
  _FlightDetailsScreenState createState() => _FlightDetailsScreenState();
}

class _FlightDetailsScreenState extends State<FlightDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 80,
                width: getProportionateScreenWidth(375.0),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(40.0),
                    bottomLeft: Radius.circular(40.0),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      baseBlackPure,
                      basePurpleDark,
                    ],
                  ),
                ),
                child: Center(
                  child: Text(
                    "Flight Details",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: baseWhitePlain,
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Positioned(
                  left: 1.0,
                  top: 1.0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 25.0),
                    child: Icon(
                      Icons.arrow_back_rounded,
                      size: 30,
                      color: baseWhitePlain,
                    ),
                  ),
                ),
              ),
            ],
          ),

          /// center
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.builder(
                  itemCount: _exGroup.length,
                  itemBuilder: (context, index) {
                    return FlightDetailsCard(
                      exGroup: _exGroup[index],
                      airline: _airline[index],
                      cities: _cities[index],
                    );
                  }),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: baseWhitePlain,
        width: getProportionateScreenWidth(375.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: getProportionateScreenWidth(120.0),
              child: Image.asset(
                "assets/logo.png",
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(120.0),
              child: Image.asset(
                "assets/bottom_icn.png",
              ),
            ),
          ],
        ),
      ),
    );
  }

  final List<String> _exGroup = [
    'Ex-Karachi',
    'Ex-Islamabad',
    'Ex-Lahore',
    'Faislabad Group',
    'Multan Group',
  ];
  final List<String> _cities = [
    'Karachi/Hyderabad/Sukkur/Quetta',
    'Rawalpindi/Peshawar',
    'Sahiwal/Gujranwala/Lahore',
    '(Departure from Lahore/Return to Faisalabad)',
    '(Departure from Lahore/Return to Multan)',
  ];
  final List<String> _airline = [
    'TURKISH AIRLINE',
    'TURKISH AIRLINE',
    'TURKISH AIRLINE',
    'EMIRATES AIRLINE',
    'EMIRATES AIRLINE',
  ];
}
