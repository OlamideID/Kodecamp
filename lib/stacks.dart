import 'package:flutter/material.dart';
import 'package:kodecamp2/styledtext.dart';

class Stacks extends StatelessWidget {
  const Stacks({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              height: 160,
              width: 160,
              child: const MiniCircle(
                span: '8',
                pic: 'assets/Ron3.jpg',
                text: 'New Tasks',
              )),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              height: 160,
              width: 160,
              child: const MiniCircle(
                span: '13',
                pic: 'assets/Ron4.jpg',
                text: 'Active Projects',
              )),
        ]));
  }
}

class MiniCircle extends StatelessWidget {
  final String text, span, pic;
  const MiniCircle(
      {super.key, required this.text, required this.pic, required this.span});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey[200],
            backgroundImage: AssetImage(
              pic,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(text),
          const SizedBox(
            height: 10,
          ),
          styledtext(span),
        ],
      ),
    );
  }
}
