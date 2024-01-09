import 'package:flutter/material.dart';
import 'package:navigation_drawer/screen_two.dart';

class HomeScreen extends StatefulWidget {
  static const String id= 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Navigation Drawer',
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
               Navigator.push(context, MaterialPageRoute(builder: (context)=> ScreenTwo()));
             },
             child: const Text('Home Screen'),
           ),
         )
        ],
      ),
    );
  }
}
