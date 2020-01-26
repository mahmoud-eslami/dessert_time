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
            elevation: 0,
            backgroundColor: AppColor.detailsBkColor,
            expandedHeight: 250,
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
            flexibleSpace: _flexibleSpaceBar(
                'IRAN',
                'BirthCake',
                'very good and nice and very good he'
                    'llo ho on a 2,000 ce and very good hello h'
                    'o on a 2,000 ce and very good hello ho on a 2,000 '
                    'calories dietPer cent Daily Values are'),
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
                                'based on a 2,000 calories diet',
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              ),
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

Widget _flexibleSpaceBar(
    String countyName, String itemName, String description) {
  return FlexibleSpaceBar(
    background: Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '$countyName',
            maxLines: 1,
            style: TextStyle(
                color: AppColor.dessertCountryColor,
                fontWeight: FontWeight.bold,
                fontSize: 10),
          ),
          Text(
            '$itemName',
            maxLines: 1,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '$description',
            maxLines: 3,
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: SizedBox(
                    height: 45,
                    child: RaisedButton(
                      child: Icon(
                        Icons.favorite_border,
                        color: AppColor.detailsIconColor,
                      ),
                      color: AppColor.detailsBkColor,
                      elevation: 0,
                      highlightElevation: 0,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: AppColor.detailsIconColor),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    )),
                flex: 1,
              ),
              SizedBox(
                width: 25,
              ),
              Expanded(
                child: SizedBox(
                  height: 45,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    color: AppColor.detailsIconColor,
                    onPressed: () {},
                    child: Text(
                      'FIND NEAREST STORE',
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                flex: 4,
              )
            ],
          )
        ],
      ),
    ),
  );
}
