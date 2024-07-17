import 'package:flutter/material.dart';

class SwitchTile extends StatefulWidget {
  const SwitchTile({super.key});

  @override
  State<SwitchTile> createState() => _SwitchTileState();
}

class _SwitchTileState extends State<SwitchTile> {
  bool lights = false;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      activeColor: Colors.blue[700],
      title: const Text.rich(
        TextSpan(
          children: [
            TextSpan(text: 'Accept '),
            TextSpan(
              text: 'Terms and Conditions',
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
      ),
      value: lights, // This should be controlled with state
      onChanged: (bool value) {
        setState(() {
          lights = value;
        });
      },
    );
  }
}
