import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_beta/pages/abilityList/abilityList.dart';
import 'package:flutter_application_beta/pages/scope/horoscope/chracter.dart';
import 'package:flutter_application_beta/pages/scope/horoscope/result.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0; //New

//New
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 40),
          title: Text('Düş Yıldızı'),
        ),
        body: PagesBetaCenter(context),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          mouseCursor: SystemMouseCursors.alias,
          selectedItemColor: Colors.pink,
          unselectedItemColor: Colors.blueGrey.withOpacity(.80),
          iconSize: 40,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              label: '',
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DailyResult()));
                },
                icon: Icon(
                  CupertinoIcons.bookmark,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.home,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChatScreen()));
                  //  Navigator.pop(context);
                },
                icon: Icon(
                  CupertinoIcons.staroflife,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(CupertinoIcons.profile_circled),
            ),
          ],
        ));
  }
}
// ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.blueGrey,
//             padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
//           ),
//           onPressed: () {
//             Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => const ChatScreen()));
//           },
//           child: const Text(
//             'Gemini',
//             style: TextStyle(
//                 color: Colors.lightGreenAccent,
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold),
//           ),
//         ),
//         SizedBox(
//           height: 40,
//         ),
//         ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.white38,
//             ),
//             onPressed: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => const DailyResult()));
//             },
//             child: Text('Yeni Burç Yorumu')),
//             Padding(
              
//               padding: const EdgeInsets.symmetric(horizontal: 30),
//               child: 
              

