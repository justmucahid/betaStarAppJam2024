import 'package:flutter/material.dart';
import 'package:flutter_application_beta/pages/scope/horoscope/chracter.dart';
import 'package:flutter_application_beta/pages/scope/horoscope/result.dart';

Center PagesBetaCenter(BuildContext context) {
  return Center(
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueGrey,
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        ),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ChatScreen()));
        },
        child: const Text(
          'Gemini',
          style: TextStyle(
              color: Colors.lightGreenAccent,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        height: 40,
      ),
      ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white38,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const DailyResult()));
          },
          child: Text('Yeni Burç Yorumu')),
    ]),
  );
}
