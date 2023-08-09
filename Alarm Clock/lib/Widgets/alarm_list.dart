import 'package:alarm_clock_v1/Widgets/alarm_item.dart';
import 'package:alarm_clock_v1/Widgets/titleaddoredit_dialog.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:alarm_clock_v1/Models/alarm_list_provider.dart';

import '../Models/alarm.dart';

//TODO:ADD a image for no alarms here press the add button to add one

class AlarmList extends StatefulWidget {
  const AlarmList({super.key});

  @override
  State<AlarmList> createState() => _AlarmListState();
}

class _AlarmListState extends State<AlarmList> {
  @override
  Widget build(BuildContext context) {
    List<Alarm> alarmlist = Provider.of<AlarmListProvider>(context).alarms;
    return alarmlist.isEmpty
        ? const Center(
            child: Text("No Alarms Here!", style: TextStyle(fontSize: 40)),
          )
        : ListView.builder(
            itemBuilder: (context, index) {
              return ChangeNotifierProvider.value(
                  value: alarmlist[index], child: const AlarmItem());
            },
            itemCount: alarmlist.length,
          );
  }
}
