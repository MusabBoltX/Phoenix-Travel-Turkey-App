import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/tour_escort/escort_screen.dart';

class EscortBox extends StatelessWidget {
  const EscortBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: (){
        Navigator.push(context, CupertinoPageRoute(builder: (_) => const TourEscortScreen()));
      },
      child: SizedBox(
        width: getProportionateScreenWidth(145.0),
        child: Stack(
          children: [
            Image.asset(
                "assets/dashboard/escort_img.png"),
            Image.asset(
              "assets/dashboard/escort_filter.png",
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
                    "assets/dashboard/t_escort.png",
                    scale: 1.2,
                  ),
                  Image.asset(
                    "assets/dashboard/Tour Escorts.png",
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
