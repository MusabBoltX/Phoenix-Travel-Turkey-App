import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/itenarary.dart';

class ItenararyBox extends StatelessWidget {
  const ItenararyBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: (){
        Navigator.push(context, CupertinoPageRoute(builder: (_) => const ItenararyScreen()));
      },
      child: SizedBox(
        width: getProportionateScreenWidth(300.0),
        child: Stack(
          children: [
            Image.asset("assets/dashboard/iten_img.png"),
            Image.asset(
              "assets/dashboard/iten_filter.png",
              color: Colors.white.withOpacity(0.6),
              colorBlendMode: BlendMode.modulate,
            ),
            Positioned(
              left: 1,
              right: 1,
              bottom: 1,
              top: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/dashboard/Itenarary_img.png",
                    scale: 1.2,
                  ),
                  Image.asset(
                    "assets/dashboard/Itinerary.png",
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
