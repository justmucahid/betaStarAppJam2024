import 'package:flutter/material.dart';
import 'package:flutter_application_beta/app/gemini_myapp.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(const GeminiAppJam());
}
