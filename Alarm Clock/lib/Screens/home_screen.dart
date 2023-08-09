import 'package:alarm_clock_v1/Models/alarm.dart';
import 'package:alarm_clock_v1/Models/alarm_list_provider.dart';
import 'package:alarm_clock_v1/Widgets/alarm_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // color: Colors.amber,
                height: appBar.preferredSize.height - 40,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: MediaQuery.of(context).size.height -
                    appBar.preferredSize.height -
                    MediaQuery.of(context).viewInsets.bottom,
                child: const AlarmList(),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //TODO:add alarm instance
          //Todo:use show Time picker
          Future<TimeOfDay?> time = showTimePicker(
            context: context,
            initialTime: TimeOfDay.now(),
          );
          time.then(
            (value) {
              if (value != null) {
                DateTime now = DateTime.now();
                Alarm newAlarm = Alarm(
                    active: true,
                    datetime: DateTime(now.year, now.month, now.day, value.hour,
                        value.minute));
                // print(newAlarm);
                Provider.of<AlarmListProvider>(context, listen: false)
                    .addAlarm(newAlarm);
                int test = newAlarm.datetime.difference(now).inSeconds;
                String? diff;
                int min = 0;
                if (((test / 60) / 60).floor() == 0) {
                  min = (test / 60).ceil();
                }else{

                }
                print(min);

                ScaffoldMessenger.of(context)
                  ..removeCurrentMaterialBanner()
                  ..showMaterialBanner(
                    MaterialBanner(
                      content: Text("Alarm set for $min minutes from now"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                                .removeCurrentMaterialBanner();
                          },
                          child: const Text("DISMISS"),
                        )
                      ],
                      dividerColor: Colors.transparent,
                      elevation: 2.5,
                    ),
                  );
                Future.delayed(const Duration(seconds: 2)).then((value) {
                  ScaffoldMessenger.of(context).clearMaterialBanners();
                });
              }
            },
          );
        },
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          semanticLabel: "Add an Alarm",
        ),
      ),
    );
  }
}
