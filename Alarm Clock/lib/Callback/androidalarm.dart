import 'package:flutter/material.dart';

class AndroidAlarmLocal {
  static void printTest() {
    print("test");
    runApp(Alarmstroke());
  }
}

class Alarmstroke extends StatelessWidget {
  const Alarmstroke({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(),
      ),
    );
  }
}
