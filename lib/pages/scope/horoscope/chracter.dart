import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DailyResult extends StatefulWidget {
  const DailyResult({super.key});

  @override
  State<DailyResult> createState() => _DailyResultState();
}

class _DailyResultState extends State<DailyResult> {
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
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 40),
          title: Text('Düş Yıldızı'),
        ),
        body: Center(child: Text('data')));
  }
}
