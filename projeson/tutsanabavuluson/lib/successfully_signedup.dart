import 'package:flutter/material.dart';
import 'main2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SuccessfullySignedUp(),
    );
  }
}

class SuccessfullySignedUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue,
              Color.fromARGB(255, 231, 126, 14)
            ], // Replace with your desired gradient colors
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Tebrikler!',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Başarıyla üye oldunuz',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Navigate back to the previous screen (signup_screen.dart)
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HolidayPollApp(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    backgroundColor: Color.fromARGB(221, 244, 108,
                        30), // Change the button background color here
                    // Other properties you might want to modify:
                    // onPrimary: Colors.white, // Text color
                    // padding: EdgeInsets.all(16.0), // Button padding
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(8.0), // Button border radius
                    // ),
                  ),
                  child: Text('Teste başla'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
