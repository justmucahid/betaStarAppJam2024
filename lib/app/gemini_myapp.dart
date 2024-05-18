import 'package:flutter/material.dart';
import 'package:flutter_application_beta/pages/appBar/appBar.dart';

class GeminiAppJam extends StatelessWidget {
  const GeminiAppJam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'APPJAM 2024'),
    );
  }
}