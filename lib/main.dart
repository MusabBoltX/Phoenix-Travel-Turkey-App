import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phoenix_travel_app/src/views/splash/splash_screen.dart';

void main() {
  runApp(const PhoenixTurkeyApp());
}

class PhoenixTurkeyApp extends StatelessWidget {
  const PhoenixTurkeyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      title: 'Phoenix tour of Turkey',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(title: 'Phoenix tour of Turkey'),
    );
  }
}