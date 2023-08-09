import 'package:flutter/cupertino.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Alarm with ChangeNotifier {
  final String id;
  DateTime datetime;
  String? title;
  String ringtone;
  bool active = false;

  Alarm(
      {this.title,
      required this.datetime,
      this.ringtone = "Hello",
      this.active = false})
      : id = uuid.v1();

  void settitle(String? value) {
    print("test here");
    print(value);
    if (value == null) return;
    title = value;
    notifyListeners();
  }

  void setactivity(bool value) {
    active = value;
    notifyListeners();
  }
}
