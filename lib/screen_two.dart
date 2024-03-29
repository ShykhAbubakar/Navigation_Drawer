import 'package:flutter/material.dart';
import 'package:navigation_drawer/home_screen.dart';
import 'package:navigation_drawer/screen_three.dart';

class ScreenTwo extends StatefulWidget {
  static const String id = 'screen_two';
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Screen Two',
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Color(0xff764abc),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 1000,
              itemBuilder: (context, index){
                return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://i.pinimg.com/736x/f8/66/8e/f8668e5328cfb4938903406948383cf6.jpg'),
                    ),
                title: Text('AbuBakar'));
              }
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, ScreenThree.id);
                // Navigator.push(context, MaterialPageRoute(builder: (context)=> ScreenTwo()));
              },
              child: const Text('Screen 2'),
            ),
          )
        ],
      ),
    );
  }
}
