import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class styledtext extends StatelessWidget {
  const styledtext(this.yakubu, {super.key});

  final String yakubu;

  @override
  Widget build(context) {
    return Text(
      yakubu,
      style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold),
    ); //writing said text;
  }
}
