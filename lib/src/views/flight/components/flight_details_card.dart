import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';

class FlightDetailsCard extends StatelessWidget {
  final String exGroup;
  final String cities;
  final String airline;
  final String c1;
  final String c2;
  final String c3;
  final String c4;

  const FlightDetailsCard({
    Key? key,
    required this.exGroup,
    required this.airline,
    required this.cities,
    required this.c1,
    required this.c2,
    required this.c3,
    required this.c4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      // height: 150.0,
      // width: getProportionateScreenWidth(340.0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// exGroup
              Text(
                exGroup,
                // textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: basePurpleDark,
                  fontSize: 24,
                ),
              ),

              const SizedBox(height: 10),

              /// cities
              Flexible(
                child: Text(
                  cities,
                  // textAlign: TextAlign.center,
                  overflow: TextOverflow.visible,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: basePurpleDark,
                    // fontSize: 16,
                  ),
                ),
              ),

              const SizedBox(height: 10),

              /// Todo: flights schedule
              SizedBox(
                // width: getProportionateScreenWidth(60.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: getProportionateScreenWidth(80.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            c1,
                            overflow: TextOverflow.visible,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: basePurpleDark,
                              // fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(80.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            c2,
                            // textAlign: TextAlign.center,
                            overflow: TextOverflow.visible,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: basePurpleDark,
                              // fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(80.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            c3,
                            // textAlign: TextAlign.center,
                            overflow: TextOverflow.visible,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: basePurpleDark,
                              // fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(80.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            c4,
                            // textAlign: TextAlign.center,
                            overflow: TextOverflow.visible,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: basePurpleDark,
                              // fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.all(6.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    color: basePurpleDark,
                  ),
                  child: Text(
                    airline,
                    style: TextStyle(color: baseWhitePlain),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              // const SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}
