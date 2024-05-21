import 'package:flutter_application_beta/data/config.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:intl/intl.dart';





TodayText(String today) {
  var now = DateTime.now();
  var formatter = DateFormat('yyyy-MM-dd');
  String today = formatter.format(now);
  //  final  today =  loremIpsum(words: 360);
  return today;
}



DayAText(String today) {
  var now = DateTime.now();
  var formatter = DateFormat('yyyy-MM-dd');
  String today = formatter.format(now);
  //  final  today =  loremIpsum(words: 360);
  return today;
}
