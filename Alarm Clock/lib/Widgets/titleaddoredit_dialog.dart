import 'package:flutter/material.dart';

class TitleDialog extends StatelessWidget {
  final Function fx;
  TitleDialog(this.fx, {super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8),
                child: TextFormField(
                  autocorrect: true,
                  decoration: InputDecoration(
                      hintText: "Enter Title",
                      label: const Text("Title"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onSaved: (value) {
                    fx(value);
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: FilledButton(
                        style: FilledButton.styleFrom(
                            padding: const EdgeInsets.all(8)),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          "Cancel",
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: FilledButton(
                        style: FilledButton.styleFrom(
                            padding: const EdgeInsets.all(8)),
                        onPressed: () {
                          _formKey.currentState!.save();
                          Navigator.of(context).pop();
                        },
                        child: const Text("OK")),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
