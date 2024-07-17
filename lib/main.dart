import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:kodecamp2/models.dart';
import 'package:kodecamp2/pages/Dialogcontent.dart';
import 'package:kodecamp2/pages/Hello.dart';
import 'package:kodecamp2/pages/hi.dart';
import 'package:kodecamp2/pages/mainpage.dart';
import 'package:kodecamp2/pages/welcome.dart';
import 'package:kodecamp2/pages/what.dart';

// ignore: unused_import
import 'newlist.dart';
//import 'package:flutter/widgets.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false, home: WelcomeScreen()));
}

class KodeCamp extends StatefulWidget {
  const KodeCamp({super.key});

  @override
  State<KodeCamp> createState() => _KodeCampState();
}

class _KodeCampState extends State<KodeCamp> {
  // ignore: non_constant_identifier_names
  // List<Widget> Screens = [
  //   MyWidget(samuel: dets,),
  //   const Hiiiii(),
  //   const HelloWorld(),
  //   const WhatsGood()
  // ];
  int _currentindex = 0;

  savetask(Details details) {
    setState(() {
      dets.add(details);
    });
  }

  showStuff() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogContent(
          addDetails: (details) => savetask(details),
        );
      },
    );
  }

  List<Details> dets = [
    Details(
      type: 'E-Learning App',
      description: 'Design and Onboarding',
    ),
    Details(type: 'Car Rental Website', description: 'Landing Page'),
    Details(type: 'E-Learning App', description: 'Onboarding animations'),
    Details(type: 'Car Rental Website', description: 'Icons'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 80,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blue[700],
          onTap: (value) {
            setState(() {
              _currentindex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                //color: Colors.black26,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.paste,
                  //color: Colors.black,
                ),
                label: 'Office'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_today,
                  //color: Colors.black,
                ),
                label: 'House'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                  //color: Colors.black,
                ),
                label: 'Other'),
          ],
          currentIndex: _currentindex,
        ),
      ),
      floatingActionButton: SpeedDial(
        activeChild: const Icon(Icons.close),
        activeIcon: Icons.close,
        activeBackgroundColor: Colors.white,
        activeForegroundColor: Colors.black,
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue[700],
        children: [
          SpeedDialChild(
            labelWidget: const Padding(
              padding: EdgeInsets.all(10),
              child: Text('Add'),
            ),
            foregroundColor: Colors.white,
            child: const Icon(Icons.pages),
            backgroundColor: Colors.blue[700],
            shape: const CircleBorder(),
            onTap: () {
              showStuff();
            },
          ),
          SpeedDialChild(
            //label: 'Clear',
            labelStyle: const TextStyle(),
            labelWidget: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Clear'),
            ),
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue[700],
            child: const Icon(Icons.check),
            shape: const CircleBorder(),
            onTap: () {},
          )
        ],
        child: const Icon(Icons.add),
      ),
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_sharp),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none_outlined))
        ],
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            Text(
              'Thu, Feb 17',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            ),
            Text(
              'Hello, Martín 👋',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: [
        MyWidget(
          samuel: dets,
        ),
        const Hiiiii(),
        const HelloWorld(),
        const WhatsGood()
      ][_currentindex],
    );
  }
}
