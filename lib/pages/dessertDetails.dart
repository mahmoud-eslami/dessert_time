import 'package:dessert_time/resource/colors.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.detailsBkColor,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            backgroundColor: AppColor.detailsBkColor,
            expandedHeight: 300,
            title: Center(
                child: Text(
              'Product Detail',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w900),
            )),
            leading: IconButton(
              icon: Icon(
                Icons.keyboard_backspace,
                color: AppColor.detailsIconColor,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.share),
                onPressed: () {},
                color: AppColor.detailsIconColor,
              )
            ],
            stretchTriggerOffset: 200,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('IRAQ'),
                    Text('Asadmnalsmfn'),
                    Text('lkdsaskkjgqwknjglakfnslaklaknasfn'),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: RaisedButton(
                              onPressed: () {},
                              child: Icon(Icons.lightbulb_outline)),
                          flex: 1,
                        ),
                        SizedBox(width: 25,),
                        Expanded(
                          child: RaisedButton(
                            onPressed: () {},
                            child: Text(
                              'FIND NEAREST STORE',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                          flex: 3,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate(
            <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    height: 150,
                  ),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        'assets/images/birthcake.png',
                        scale: 2,
                      )),
                ],
              ),
              Container(color: Colors.purple, height: 150.0),
              Container(color: Colors.green, height: 45.0),
              Container(color: Colors.red, height: 150.0),
              Container(color: Colors.purple, height: 150.0),
              Container(color: Colors.green, height: 150.0),
              Container(color: Colors.red, height: 150.0),
              Container(color: Colors.purple, height: 150.0),
              Container(color: Colors.green, height: 150.0),
              Container(color: Colors.red, height: 150.0),
              Container(color: Colors.purple, height: 150.0),
              Container(color: Colors.green, height: 150.0),
              Container(color: Colors.red, height: 150.0),
              Container(color: Colors.purple, height: 150.0),
              Container(color: Colors.green, height: 150.0),
            ],
          ))
        ],
      ),
    );
  }
}

