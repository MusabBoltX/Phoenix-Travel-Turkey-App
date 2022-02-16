import 'package:flutter/material.dart';

class Day1Screen extends StatefulWidget {
  const Day1Screen({Key? key}) : super(key: key);

  @override
  _Day1ScreenState createState() => _Day1ScreenState();
}

class _Day1ScreenState extends State<Day1Screen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Day 1"),
      ),
    );
  }
}
