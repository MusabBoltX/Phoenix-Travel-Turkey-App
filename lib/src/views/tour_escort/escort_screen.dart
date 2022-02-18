import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/tour_escort/components/escort_card.dart';

class TourEscortScreen extends StatefulWidget {
  const TourEscortScreen({Key? key}) : super(key: key);

  @override
  _TourEscortScreenState createState() => _TourEscortScreenState();
}

class _TourEscortScreenState extends State<TourEscortScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
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
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 20.0),
                      child: Icon(
                        Icons.arrow_back_rounded,
                        size: 30,
                        color: baseWhitePlain,
                      ),
                    ),
                  ),
                  Text(
                    "Tour Escorts",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: baseWhitePlain,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),

            /// center
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return EscortPersonDetailsCard(
                        airline: _airline[index],
                        deptCity: _deptCity[index],
                        pakContact: _pakContact[index],
                        turkishContact: _turkishContact[index],
                        image: _images[index],
                        personName: _names[index],
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
      ),
    );
  }

  final List<String> _images = [
    'assets/Tour Escorts/anwar.png',
    'assets/Tour Escorts/farhad.png',
    'assets/Tour Escorts/waqas.png',
    'assets/Tour Escorts/adnan.png',
  ];
  final List<String> _names = [
    'Anwar Jahangir',
    'Farhad Ahmed',
    'Waqas Ahmed',
    'Adnan Ahmed',
  ];
  final List<String> _airline = [
    'Turkish Airline',
    'Turkish Airline',
    'Turkish Airline',
    'Emirates Airline',
  ];
  final List<String> _deptCity = [
    'Karachi',
    'Islamabad City',
    'Lahore City',
    'Lahore City',
  ];
  final List<String> _pakContact = [
    '+92-333-3358351 / +66-81-8550244',
    '+92-305-6719786',
    '+92-312-1161432',
    '+92-300-2506171',
  ];
  final List<String> _turkishContact = [
    '+90 552 604 29 13',
    '+90 552 735 29 13',
    '+90 552 671 29 13',
    '+90 552 158 29 13',
  ];
}
