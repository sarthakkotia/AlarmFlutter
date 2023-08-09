import 'dart:ui';

import 'package:circular_motion/circular_motion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circular_text/circular_text.dart';
import 'package:circular_menu/circular_menu.dart';
//TODO flutter pub add circular_menu
//https://pub.dev/packages/circle_list/score

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: 50,
          height: 50,
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
            ),
          ),
        ));
  }
}
