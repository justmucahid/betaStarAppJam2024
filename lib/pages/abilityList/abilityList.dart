import 'package:flutter/material.dart';
import 'package:flutter_application_beta/pages/scope/horoscope/result.dart';

Center PagesBetaCenter(BuildContext context) {
  return const Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        PushPAges(),
        // ElevatedButton( onPressed: () {
        //   Navigator.pushReplacement
        //   (
        //     context, MaterialPageRoute(builder:  (context) => HoroScopeResult()) );
        // }, child: Text('data'),
        // ),
      ],
    ),
  );
}

class PushPAges extends StatefulWidget {
  const PushPAges({super.key});

  @override
  State<PushPAges> createState() => _PushPAgesState();
}

class _PushPAgesState extends State<PushPAges> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey,
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const HoroScopeResult()));
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
            onPressed: () {},
            child: Text('Yeni Burç Yorumu')),
      ],
    );
  }
}
