import 'package:flutter/material.dart';

class DialogScreen extends StatelessWidget {
  const DialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).timePickerTheme.backgroundColor,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(16),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "title",
                ),
                SizedBox(height: 8.0),
                Text('Content'),
                SizedBox(height: 16.0),
              ],
            ),
          ),
        ));
  }
}
