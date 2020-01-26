import 'package:dessert_time/resource/colors.dart';
import 'package:flutter/cupertino.dart';
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
            expandedHeight: 200,
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
                          child: Container(
                              child: IconButton(
                                  icon: Icon(Icons.star), onPressed: () {})),
                          flex: 1,
                        ),
                        SizedBox(
                          width: 25,
                        ),
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
              SizedBox(
                height: 170,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(25)),
                        color: Colors.white,
                      ),
                      height: 100,
                    ),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          'assets/images/birthcake.png',
                          height: 140,
                        )),
                  ],
                ),
              ),
              Container(color: Colors.white, height: 150.0),
              Container(color: Colors.white, height: 45.0),
              Container(color: Colors.white, height: 150.0),
              Container(color: Colors.white, height: 150.0),
              Container(color: Colors.white, height: 150.0),
              Container(color: Colors.red, height: 150.0),
            ],
          ))
        ],
      ),
    );
  }
}
