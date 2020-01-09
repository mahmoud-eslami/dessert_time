import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
//      bottomNavigationBar:
//      CurvedNavigationBar(
//        backgroundColor: Colors.white,
//        height: 50,
//        color: Colors.lightGreenAccent,
//        items: <Widget>[
//          Icon(Icons.add, size: 30),
//          Icon(Icons.list, size: 30),
//          Icon(Icons.compare_arrows, size: 30),
//        ],
//      ),
    bottomNavigationBar: BottomNavigationBar(
      items: ,
    ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Discover fruits\naround the world',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.black,
              ),
            ],
          )
        ],
      ),
    );
  }
}
