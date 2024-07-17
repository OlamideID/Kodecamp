import 'package:flutter/material.dart';
import 'package:kodecamp2/models.dart';

import 'package:kodecamp2/pages/Mtbutton.dart';

class DialogContent extends StatefulWidget {
  final Function(Details details) addDetails;

  const DialogContent({super.key, required this.addDetails});

  @override
  State<DialogContent> createState() => _DialogContentState();
}

class _DialogContentState extends State<DialogContent> {
  final _firstcontroller = TextEditingController();

  final _secondController = TextEditingController();

  // ignore: avoid_tpes_as_parameter_names

  submitExpenseData() {
    if (_firstcontroller.text.trim().isEmpty ||
        _secondController.text.trim().isEmpty) {
      //show error message
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text('Invalid input'),
          content: const Text('please input some reasonable text'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(ctx);
              },
              child: const Text('Okay'),
            )
          ],
        ),
      );
      return;
    }
    widget.addDetails(Details(
        type: _firstcontroller.text, description: _secondController.text));

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _firstcontroller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10), gapPadding: 2.0),
              hintText: 'Add a new Task',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: _secondController,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              hintText: 'Specify the task',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Cancel')),
                MyButton(
                    text: 'Save',
                    onPressed: () {
                      submitExpenseData();
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
