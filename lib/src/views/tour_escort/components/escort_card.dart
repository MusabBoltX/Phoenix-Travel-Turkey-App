import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';

class EscortPersonDetailsCard extends StatelessWidget {
  final String image;
  final String personName;
  final String airline;
  final String deptCity;
  final String pakContact;
  final String turkishContact;

  const EscortPersonDetailsCard(
      {Key? key,
      required this.image,
      required this.personName,
      required this.airline,
      required this.deptCity,
      required this.pakContact,
      required this.turkishContact})
      : super(key: key);

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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100,
              // height: 100,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(image),
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
                      personName,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: basePurpleDark,
                        fontSize: 28,
                      ),
                    ),

                    const SizedBox(height: 10),

                    /// airline
                    Flexible(
                      child: Text(
                        'Airline :  ' + airline,
                        // textAlign: TextAlign.center,
                        overflow: TextOverflow.visible,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: basePurpleDark,
                          // fontSize: 16,
                        ),
                      ),
                    ),

                    // const SizedBox(height: 5),

                    /// deptCity
                    Flexible(
                      child: Text(
                        'Departure City :  ' + deptCity,
                        // textAlign: TextAlign.center,
                        overflow: TextOverflow.visible,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: basePurpleDark,
                          // fontSize: 16,
                        ),
                      ),
                    ),
                    // const SizedBox(height: 5),

                    /// pakContact
                    Text(
                      'Pak Contact :  ' + pakContact,
                      // textAlign: TextAlign.center,
                      overflow: TextOverflow.visible,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: basePurpleDark,
                        // fontSize: 16,
                      ),
                    ),
                    // const SizedBox(height: 5),

                    /// turkishContact
                    Flexible(
                      child: Text(
                        'Turkish Contact :  ' + turkishContact,
                        // textAlign: TextAlign.center,
                        overflow: TextOverflow.visible,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: basePurpleDark,
                          // fontSize: 16,
                        ),
                      ),
                    ),
                    // const SizedBox(height: 10),
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
