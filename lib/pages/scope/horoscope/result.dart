import 'package:flutter/material.dart';

class HoroScopeResult extends StatelessWidget {
  
  const HoroScopeResult({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('yorumAi'),
            ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
          ],
        ),
    ));
  }
}