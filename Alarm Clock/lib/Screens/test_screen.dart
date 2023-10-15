import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:flutter/material.dart';
import 'package:alarm_clock_v1/Callback/androidalarm.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});
  @override
  Widget build(BuildContext context) {
    AndroidAlarmManager.initialize();
    AndroidAlarmManager.oneShotAt(DateTime.now().add(Duration(seconds: 10)), 0,
        AndroidAlarmLocal.printTest);
    return const Placeholder();
  }
}
