import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_beta/pages/scope/saved/savedList.dart';

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
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 30),
          title: Text('Düş Yıldızı'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Text('Kaydedilenler',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(
              height: 30,
            ),
            Saved(),
          ],
        )));
  }
}
