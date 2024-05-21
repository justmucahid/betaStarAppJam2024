import 'package:flutter/material.dart';
import 'package:flutter_application_beta/data/config.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:intl/intl.dart';

Center PagesBetaCenter(BuildContext context) {
  return Center(
    child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
          height: 30,
        ),
        Text('Merhaba ARDA', style: TextStyle(fontSize: 20)),
        SizedBox(
          height: 10,
        ),
        Text('Günlük Burç Yorumun:', style: TextStyle(fontSize: 30)),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FutureBuilder(
                    future: sendChatMessage(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Text(snapshot.data.toString());
                      } else {
                        return Text('Loading...');
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    ),
  );
}

Future<String?> sendChatMessage() async {
 var now = await DateTime.now();
  var formatter = DateFormat('yyyy-MM-dd');
  String today = formatter.format(now);
  // For text-only input, use the gemini-pro model
  final model =
      GenerativeModel(model: 'gemini-pro', apiKey: GenAIConfig.geminiApiKey);
  final content = [Content.text('$today tarihli koç burcu yorumu')];
  final response = await model.generateContent(content);
  print(response.text);
  final texts = response.text;
  return texts;
}
