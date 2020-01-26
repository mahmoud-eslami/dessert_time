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
              background: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
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
              Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColor.detailPageBorderColor),
                            borderRadius: BorderRadius.circular(17)),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                IconButton(
                                    icon: Icon(
                                      Icons.calendar_view_day,
                                      size: 18,
                                      color: AppColor.detailsIconColor,
                                    ),
                                    onPressed: () {}),
                                Text(
                                  'Nutrition Facts',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                IconButton(
                                    icon: Icon(
                                      Icons.error_outline,
                                      size: 14,
                                      color: Colors.grey,
                                    ),
                                    onPressed: () {})
                              ],
                            ),
                            //todo:add a custom widget
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColor.detailPageBorderColor),
                            borderRadius: BorderRadius.circular(17)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  IconButton(
                                      icon: Icon(
                                        Icons.error_outline,
                                        color: AppColor.detailsIconColor,
                                        size: 18,
                                      ),
                                      onPressed: () {}),
                                  Text(
                                    'Notice',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Text(
                                  'Per cent Daily Values are based on a 2,000'
                                      ' calories diet.Per cent Daily Values are based '
                                      'on a 2,000 calories dietPer cent Daily Values are '
                                      'based on a 2,000 calories diet',style: TextStyle(fontSize: 10,color: Colors.grey),),
                            ],
                          ),
                        ),
                      ),
                      Container(),
                    ],
                  ),
                ),
              ),
              Container(color: Colors.white, height: 150.0),
              Container(color: Colors.white, height: 150.0),
              Container(color: Colors.white, height: 150.0),
            ],
          ))
        ],
      ),
    );
  }
}
