import 'package:flutter/material.dart';
import 'package:flutter_application_beta/pages/scope/saved/savedDay.dart';
 class Saved extends StatelessWidget {
  const Saved({super.key});


    final String dayA = '2024-02-01';
    final String dayB = '2024-03-21';

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              TextButton(onPressed: () { 
                Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DaySaved()));
                
               }, child: Text(dayA),),
               Text(dayB),
            ],
          );
  }
}