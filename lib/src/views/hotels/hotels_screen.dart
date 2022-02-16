import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/hotels/components/hotels_card.dart';

class HotelsScreen extends StatefulWidget {
  const HotelsScreen({Key? key}) : super(key: key);

  @override
  _HotelsScreenState createState() => _HotelsScreenState();
}

class _HotelsScreenState extends State<HotelsScreen> {
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
                    "Hotels",
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
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return HotelDetailsCard(
                      image: _images[index],
                      phoneNumber: _phoneNumber[index],
                      address: _address[index],
                      hotelName: _hotelName[index],
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

  final List<String> _images = [
    'assets/Hotels/bursa.png',
    'assets/Hotels/movenpick.png',
    'assets/Hotels/cappada.png',
    'assets/Hotels/interconti.png',
  ];
  final List<String> _hotelName = [
    'Bursa Almirah Hotel',
    'Bursa Movenpick Hotel',
    'Cappadocia Double Tree by hilton avanos ',
    'Intercontinental istanbul',
  ];
  final List<String> _address = [
    'Santral Garaj, Ulubatlı Hasan Blv.No:5, 16200 Osmangazi/Bursa, Turkey',
    'Çekirge, Çekirge Cd. No:81, 16104 Osmangazi/Bursa, Turkey',
    'Yeni, Kızılırmak Cd. No:1, 50500 Avanos/Nevşehir, Turkey',
    'Gümüşsuyu, Asker Ocağı Cd. No. 1, 34435 Beyoğlu/İstanbul, Turkey',
  ];
  final List<String> _phoneNumber = [
    '+90 224 250 20 20',
    '+90 224 230 01 00',
    '+90 384 511 11 11',
    '+90 212 368 44 44',
  ];
}
