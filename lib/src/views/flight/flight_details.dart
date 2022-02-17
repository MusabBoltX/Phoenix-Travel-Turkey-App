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
                    "Flight Details",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: baseWhitePlain,
                      fontSize: 28,
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
                    itemCount: _exGroup.length,
                    itemBuilder: (context, index) {
                      return FlightDetailsCard(
                        exGroup: _exGroup[index],
                        airline: _airline[index],
                        cities: _cities[index],
                        c1: _c1[index],
                        c2: _c2[index],
                        c3: _c3[index],
                        c4: _c4[index],
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

  final List<String> _c1 = [
    'TK 709 \nPC 2738\nPC 2737\nTK 708',
    'TK 711  \nPC 2738\nPC 2737\nTK 710',
    'TK 715 \nTK 2012\nTK 2013\nTK 718',
    'EK  623\nEK  123\nTK 2012\nTK 2013\nEK  122\nEK  122',
    'EK  623\nEK  123\nTK 2012\nTK 2013\nEK  122\nEK 2102',
  ];

  final List<String> _c2 = [
    '21 FEB \n23 FEB\n25 FEB\n28 FEB',
    '21 FEB \n23 FEB\n25 FEB\n28 FEB',
    '21 FEB \n23 FEB\n25 FEB\n28 FEB',
    '21 FEB \n21 FEB\n23 FEB\n25 FEB\n28 FEB\n01 MAR',
    '21 FEB \n21 FEB\n23 FEB\n25 FEB\n28 FEB\n01 MAR',
  ];

  final List<String> _c3 = [
    'KHI IST \nSAW ASR\nASR SAW\nIST KHI ',
    'ISB IST\nSAW ASR\nASR SAW\nIST ISB',
    'LHE IST\nIST ASR\nASR IST\nIST LHE ',
    'LHE DXB\nDXB IST\nIST ASR \nASR IST \nIST DXB\nDXB LYP ',
    'LHE DXB\nDXB IST\nIST ASR \nASR IST \nIST DXB\nDXB MUX ',
  ];

  final List<String> _c4 = [
    '0715 1120 \n1825 1945\n1610 1735\n2050 0405 ',
    '0635 1035\n1825 1945\n1610 1735\n2125 0455',
    '0800  1220\n1445  1605\n1655  1820\n2235  0605',
    '0320  0550 \n1015  1425\n1445  1605\n1655  1820\n2005  0120\n0710  1100 ',
    '0320  0550 \n1015  1425\n1445  1605\n1655  1820\n2005  0120\n0600  0935  ',
  ];

}
