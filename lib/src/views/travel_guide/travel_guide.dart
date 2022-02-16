import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';

class TravelGuideScreen extends StatefulWidget {
  const TravelGuideScreen({Key? key}) : super(key: key);

  @override
  State<TravelGuideScreen> createState() => _TravelGuideScreenState();
}

class _TravelGuideScreenState extends State<TravelGuideScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          Stack(
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
                    "Travel Guide",
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
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Markdown(data: _markdownData),
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

  static const String _markdownData = """
- Please keep COVID Vaccination Card / PCR Test Report with you, in order to show at the airports on Departure / Arrival
- Passports must be kept in the safe box in the hotel’s rooms. There is no need to carry the passports during the tours 
- Please keep the hotel visiting card / address details handy, when you go out from the hotel 
- Avoid carrying valuables during tours and shopping outings
- At all airports across Pakistan, the limit for the currency being carried is PKR 3,000/-. The value of any foreign currency being carried should not exceed USD 10,000/-
- Baggage Allowance (Economy Class):  Check-in Baggage: 30 Kg (for International Flight) / 25 Kg (Domestic Flight) Hand Baggage: 7 Kg
- Medicines need to be carried with a proper doctor’s prescription (for both Hand-Carry and Check-In luggage)
- If you are carrying Liquids in your hand carry, please ensure that the container hold no more than 100ml
- Carrying Cigarette Lighters in your hand carry or check-in baggage, is strictly prohibited
- Keep Warm Clothes (Jacket/Gloves/Socks)
- Please ensure that you carry the necessary travel adapters and plugs for your charging devices
- Currency can be exchanged from local money changer in Turkey. Current Exchange Rate:  EUR to Turkish LIRA: 15.53 USD to Turkish LIRA: 13.64
""";
}
