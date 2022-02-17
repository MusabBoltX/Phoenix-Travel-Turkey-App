import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phoenix_travel_app/src/views/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      title: 'Pheonix Travel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(title: 'Flutter Demo Home Page'),
    );
  }
}