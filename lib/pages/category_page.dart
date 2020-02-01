import 'package:dessert_time/resource/colors.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Select',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              Text(
                'Category',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 38,
                    fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Container(
                  child: ListView.builder(
                      padding: EdgeInsets.only(top: 10),
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return CategoryItem(
                          image: 'assets/images/cakee.jpg',
                          name: 'dessert',
                          count: 300,
                          newItem: true,
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String image;
  final String name;
  final int count;
  final bool newItem;

  const CategoryItem({Key key, this.image, this.name, this.count, this.newItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: <Widget>[
          Material(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.asset(
              image,
              width: 80,
              height: 80,
            ),
          ),
          SizedBox(
            width: 40,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '$name',
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '$count items',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          newItem
              ? Container(
                  width: 60,
                  height: 25,
                  decoration: BoxDecoration(
                    color: AppColor.detailsIconColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      '56 New!',
                      style: TextStyle(color: Colors.white, fontSize: 11),
                    ),
                  ),
                )
              : Container(
                  width: 60,
                  height: 25,
                  decoration: BoxDecoration(
                    color: AppColor.onlyBlack,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text('updated',
                        style: TextStyle(color: Colors.white, fontSize: 11)),
                  ),
                )
        ],
      ),
    );
  }
}
