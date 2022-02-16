import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/travel_guide/travel_guide.dart';

class TravelGuideBox extends StatelessWidget {
  const TravelGuideBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: (){
        Navigator.push(context, CupertinoPageRoute(builder: (_) => const TravelGuideScreen()));
      },
      child: SizedBox(
        width: getProportionateScreenWidth(145.0),
        child: Stack(
          children: [
            Image.asset("assets/dashboard/tg_img.png"),
            Image.asset(
              "assets/dashboard/travel_guide_filter.png",
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
                    "assets/dashboard/tg_icn.png",
                    scale: 1.2,
                  ),
                  Image.asset(
                    "assets/dashboard/Travel Guide.png",
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
