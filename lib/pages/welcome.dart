import 'package:flutter/material.dart';
import 'package:kodecamp2/pages/login.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                    height: 500,
                    child: Image.asset(
                        'assets/one.jpg') // Replace with your own image asset
                    ),
                const SizedBox(height: 8),
                RichText(
                  text: TextSpan(
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                      children: [
                        const TextSpan(text: 'Welcome to'),
                        TextSpan(
                            text: 'Tasky',
                            style: TextStyle(color: Colors.blue[700])),
                        const TextSpan(
                          text: '!',
                        )
                      ]),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Manage all your projects and tasks in one place',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 60),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ));
                    // Add your onPressed code here!
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue[900],
                    padding: const EdgeInsets.symmetric(
                        horizontal: 140, vertical: 15),
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                  child: const Text('Start'),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already have an account?'),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ));
                        },
                        child: const Text(
                          'Log in',
                          style: TextStyle(
                              color: Colors.black,
                              //fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
