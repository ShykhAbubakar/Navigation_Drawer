import 'package:flutter/material.dart';
import 'package:navigation_drawer/screen_two.dart';
class ScreenThree extends StatefulWidget {
  static const String id= 'screen_three';
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
              'Screen Three',
              style: TextStyle(color: Colors.white),
            )),
        backgroundColor: Color(0xff764abc),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: (){
                Navigator.pop(context);
                // Navigator.push(context, MaterialPageRoute(builder: (context)=> ScreenTwo()));
              },
              child: const Text('Screen 3'),
            ),
          )
        ],
      ),
    );
  }
}
