import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';

class DayBox extends StatelessWidget {
  const DayBox({Key? key, this.routeName, required this.dayName, required this.image}) : super(key: key);

  final dynamic routeName;
  final String dayName;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, CupertinoPageRoute(builder: (_) => routeName));
      },
      child: SizedBox(
        height: 150.0,
        width: getProportionateScreenWidth(340.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
                padding: const EdgeInsets.all(3.0),
                child: Image.asset(image),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "   $dayName",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: baseRed,
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
