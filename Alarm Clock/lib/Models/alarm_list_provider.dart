import 'package:flutter/material.dart';
import 'package:alarm_clock_v1/Models/alarm.dart';

class AlarmListProvider extends ChangeNotifier {
  List<Alarm> _alarms = [];
  List<Alarm> get alarms {
    return [..._alarms];
  }

  void addAlarm(Alarm newAlarm) {
    print(newAlarm.datetime);
    _alarms.add(newAlarm);
    notifyListeners();
  }
}
