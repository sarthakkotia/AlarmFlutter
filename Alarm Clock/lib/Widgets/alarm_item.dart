import 'package:alarm_clock_v1/Widgets/titleaddoredit_dialog.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../Models/alarm.dart';

class AlarmItem extends StatelessWidget {
  const AlarmItem({super.key});

  @override
  Widget build(BuildContext context) {
    Alarm alarmobj = Provider.of<Alarm>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8),
          child: ExpansionTile(
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton.filledTonal(
                      style: IconButton.styleFrom(
                          foregroundColor:
                              Theme.of(context).colorScheme.secondary),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return TitleDialog(alarmobj.settitle);
                          },
                        );
                      },
                      icon: const Icon(Icons.edit)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: alarmobj.title != null
                        ? Text(
                            alarmobj.title!,
                            style: const TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 16),
                          )
                        : const Text(""),
                  )
                ],
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                      DateFormat("hh:mm a").format(alarmobj.datetime)),
                  Switch(
                    value: alarmobj.active,
                    onChanged: (value) {
                      print(alarmobj.id);
                      print(value);
                      alarmobj.setactivity(value);
                    },
                  )
                ],
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: ListTile(
                    onTap: () {
                      print("q");
                    },
                    leading: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Icon(
                        Icons.notifications_active_sharp,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    title: Text(
                      alarmobj.ringtone,
                      style: const TextStyle(fontSize: 17),
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
