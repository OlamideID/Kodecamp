import 'package:flutter/material.dart';
import 'package:kodecamp2/anothr.dart';
import 'package:kodecamp2/models.dart';
import 'package:kodecamp2/stacks.dart';
import 'package:kodecamp2/styledtext.dart';

class MyWidget extends StatelessWidget {
  final List<Details> samuel;
  const MyWidget({super.key, required this.samuel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          const Stacks(),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 25,
              ),
              Icon(
                Icons.circle,
                color: Colors.blue[900],
                size: 10,
              ),
              const SizedBox(
                width: 10,
              ),
              const styledtext('Tasks of the day'),
            ],
          ),
          Expanded(
              child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
            itemCount: samuel.length,
            itemBuilder: (context, index) {
              var itemindex = index;
              var product = samuel[itemindex];

              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                    leading: const Checked(),
                    title: Text(
                      product.type,
                      style: const TextStyle(fontSize: 10),
                    ),
                    subtitle: Text(
                      product.description,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
