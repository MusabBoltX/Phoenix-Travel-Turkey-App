import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';

class DayScheduleCard extends StatelessWidget {
  final String image;
  final String details;
  final String hrs;

  const DayScheduleCard({
    Key? key,
    required this.image,
    required this.details,
    required this.hrs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 150.0,
      // width: getProportionateScreenWidth(340.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100,
              // height: double.maxFinite,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  alignment: Alignment.center,
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              padding: const EdgeInsets.all(5.0),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    hrs,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: baseWhitePlain,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  // textDirection: TextDirection.ltr,
                  mainAxisSize: MainAxisSize.min,
                  // textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      details,
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: basePurpleDark,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
