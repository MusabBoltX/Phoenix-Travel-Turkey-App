import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/dialog_box/alertbox.dart';
import 'package:phoenix_travel_app/src/views/onboarding/components/escort_box.dart';
import 'package:phoenix_travel_app/src/views/onboarding/components/flight_box.dart';
import 'package:phoenix_travel_app/src/views/onboarding/components/hotels_box.dart';
import 'package:phoenix_travel_app/src/views/onboarding/components/itenarary_box.dart';
import 'package:phoenix_travel_app/src/views/onboarding/components/travel_guide_box.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  _OnboardScreenState createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return const CustomDialogBox(
              img: 'assets/dialog.jpeg',
            );
          });
    });    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 180,
            width: getProportionateScreenWidth(375.0),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(100.0),
                bottomLeft: Radius.circular(100.0),
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
                "Welcome to Turkey",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: baseWhitePlain,
                  fontSize: 28,
                ),
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10.0)),
          const Text(
            "Esteemed sales partners, we welcome you to the memorable Turkey trip",
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    /// Itenarary Box
                    const ItenararyBox(),
                    /// 4 Boxes
                    SizedBox(
                      width: getProportionateScreenWidth(300.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /// Flight and Escort Box
                          Column(
                            children: const [
                              EscortBox(),
                              FlightBox(),
                            ],
                          ),

                          /// Hotel and Travel Box
                          Column(
                            children: const [
                              HotelsBox(),
                              TravelGuideBox(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
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


}
