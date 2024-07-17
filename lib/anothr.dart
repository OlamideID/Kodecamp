import 'package:flutter/material.dart';

class Checked extends StatefulWidget {
  const Checked({super.key});

  @override
  State<Checked> createState() => _CheckedState();
}

class _CheckedState extends State<Checked> {
  bool? ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      shape: const CircleBorder(
          eccentricity: 0.5, side: BorderSide(color: Colors.black)),
      value: ischecked,
      onChanged: (value) {
        setState(() {
          ischecked = value;
        });
      },
    );
  }
}
