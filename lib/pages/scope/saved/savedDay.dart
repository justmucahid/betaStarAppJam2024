import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_beta/data/config.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class DaySaved extends StatefulWidget {
  const DaySaved({super.key});

  @override
  State<DaySaved> createState() => _DaySavedState();
}

class _DaySavedState extends State<DaySaved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 90,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            iconSize: 45,
            color: Colors.blueGrey,
            icon: Icon(
              CupertinoIcons.chevron_left_circle_fill,
            ),
          ),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 30),
          title: Text('Düş Yıldızı'),
        ),
        body: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
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
                        ],
                      ),
            )));
  }
}

Future<String?> sendChatMessage() async {
  final String today = '2024-02-01';
  // For text-only input, use the gemini-pro model
  final model =
      GenerativeModel(model: 'gemini-pro', apiKey: GenAIConfig.geminiApiKey);
  final content = [Content.text('$today tarihli koç burcu yorumu')];
  final response = await model.generateContent(content);
  print(response.text);
  final texts = response.text;
  return texts;
}
