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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
           UserAccountsDrawerHeader(
             currentAccountPicture: CircleAvatar(
               backgroundImage: NetworkImage('https://i.pinimg.com/736x/f8/66/8e/f8668e5328cfb4938903406948383cf6.jpg'),
             ),
               accountName: Text('AbuBakar'),
               accountEmail: Text('Shykhabubakar99@gmail.com')
           ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: (){

              },
            ),
            ListTile(
              leading: Icon(Icons.calculate),
              title: Text('Calculate'),
              onTap: (){

              },
            ),
            ListTile(
              leading: Icon(Icons.cabin),
              title: Text('Cabin'),
              onTap: (){
                Navigator.pushNamed(context, ScreenTwo.id);
              },
            ),
          ],
        ),
      ),
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
