import 'package:flutter/material.dart';
import 'package:flutter_application_beta/data/config.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class DailyResult extends StatefulWidget {
  const DailyResult({super.key});

  @override
  State<DailyResult> createState() => _DailyResultState();
}

class _DailyResultState extends State<DailyResult> {
  @override
  void initState() {
    // Future.delayed(Duration.zero, () async {
    //   String? metin = await sendChatMessage();
    //   //here is the async code, you can execute any async code here
    // });

    super.initState();
    sendChatMessage();
  }

  @override
  void dispose() {
    sendChatMessage();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(sendChatMessage().toString()),
            ElevatedButton(
              onPressed: () {
                setState(() {});
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
          ],
        ),
      ),
    );
  }
}

Future<String?> sendChatMessage() async {
  // For text-only input, use the gemini-pro model
  final model = GenerativeModel(
      model: 'gemini-pro', apiKey: GenAIConfig.geminiApiKey );
  final content = [Content.text('koç burcunu yorumla')];

  final response = await model.generateContent(content);
  print(response.text);
  final texts = response.text;
  return texts;
}
