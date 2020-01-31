import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            'Select',
            style: TextStyle(color: Colors.black),
          ),
          Text(
            'Category',
            style: TextStyle(color: Colors.black),
          ),
      CategoryItem(
        image: 'assets/images/cakee.jpg',
        name: 'desser',
        count: 300,
      ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String image;
  final String name;
  final int count;

  const CategoryItem({Key key, this.image, this.name, this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.asset(image,width: 40,height: 40,),
        Column(
          children: <Widget>[
            Text(
              '$name',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              '$count items',
              style: TextStyle(color: Colors.grey[500]),
            ),
          ],
        ),
      ],
    );
  }
}
