import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('Discover fruits\naround the world',style: TextStyle(fontSize: 20),),
              CircleAvatar(backgroundColor: Colors.black,),
            ],
          )
        ],
      ),
    );
  }
}
