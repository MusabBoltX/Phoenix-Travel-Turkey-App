import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/hotels/hotels_screen.dart';

class HotelsBox extends StatelessWidget {
  const HotelsBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: (){
        Navigator.push(context, CupertinoPageRoute(builder: (_) => const HotelsScreen()));
      },
      child: SizedBox(
        width: getProportionateScreenWidth(145.0),
        child: Stack(
          children: [
            Image.asset(
                "assets/dashboard/hotels_img.png"),
            Image.asset(
              "assets/dashboard/hotels_filter.png",
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
                    "assets/dashboard/hotels_icn.png",
                    scale: 1.2,
                  ),
                  Image.asset(
                    "assets/dashboard/Hotels.png",
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
