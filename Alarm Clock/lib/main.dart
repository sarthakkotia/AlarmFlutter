import 'package:alarm_clock_v1/Models/alarm_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:alarm_clock_v1/Screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
  //TODO : implement splash screen
  //TODO: Lean how to do a get started tutorial in flutter apps
  //TODO: Implement that the theme color should be same to that of the wallpaper of the phone ie true material you
  //TODO: Implement Dark mode and light mode and a switch among them
  //TODO : animate no alarms here
  //TODO: add local storage
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AlarmListProvider(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Alarm Clock',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.blueGrey, brightness: Brightness.dark),
            useMaterial3: true,
          ),
          home: const HomeScreen()),
    );
  }
}
