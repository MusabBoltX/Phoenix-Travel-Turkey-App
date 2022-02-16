import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/flight/flight_details.dart';

class FlightBox extends StatelessWidget {
  const FlightBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: (){
        Navigator.push(context, CupertinoPageRoute(builder: (_) => const FlightDetailsScreen()));
      },
      child: SizedBox(
        width: getProportionateScreenWidth(145.0),
        child: Stack(
          children: [
            Image.asset(
                "assets/dashboard/flight_img.png"),
            Image.asset(
              "assets/dashboard/flight_filter.png",
              color: Colors.white.withOpacity(0.8),
              colorBlendMode: BlendMode.modulate,
            ),
            Positioned(
              left: 1,
              right: 1,
              bottom: 1,
              top: 1,
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.center,
                mainAxisAlignment:
                MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/dashboard/flight_icn.png",
                    scale: 1.2,
                  ),
                  Image.asset(
                    "assets/dashboard/Flight Details.png",
                    scale: 1.2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
