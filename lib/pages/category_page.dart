import 'package:dessert_time/resource/colors.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomCategory();
  }
}

class CustomCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Text(
              'Categories',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.only(top: 30),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return _CategoryItem(
                      color: Colors.primaries[index],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class _CategoryItem extends StatelessWidget {
  final Color color;
  final String name;

  const _CategoryItem({Key key, this.name, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 18),
      child: CustomPaint(
        foregroundPainter: CirclePainter(),
        child: Container(
          decoration: BoxDecoration(
              color: color.withOpacity(.8),
              borderRadius: BorderRadius.circular(10)),
          width: 300,
          height: 100,
          child: Center(
              child: Text(
            'Dessert',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
          )),
        ),
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  Paint _paint;

  CirclePainter() {
    _paint = Paint()
      ..color = Colors.white.withOpacity(.3)
      ..strokeWidth = 15.0
      ..style = PaintingStyle.stroke;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(Offset(size.width - 50, size.height), 30, _paint);
    canvas.drawCircle(Offset(0, 0), 30, _paint);
    canvas.drawCircle(Offset(0, size.height), 40, _paint);
    canvas.drawCircle(Offset(size.width, size.height / 5), 15, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class CategorySkeleton extends StatelessWidget {
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
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return CategoryItem(
                          image: 'assets/images/cakee.jpg',
                          name: 'Cake',
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
      padding: EdgeInsets.symmetric(vertical: 5),
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
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '$count items',
                  style: TextStyle(color: Colors.grey[500], fontSize: 10),
                ),
                SizedBox(
                  height: 5,
                ),
                newItem
                    ? Container(
                        width: 50,
                        height: 19,
                        decoration: BoxDecoration(
                          color: AppColor.detailsIconColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            '56 New!',
                            style: TextStyle(color: Colors.white, fontSize: 9),
                          ),
                        ),
                      )
                    : Container(
                        width: 50,
                        height: 19,
                        decoration: BoxDecoration(
                          color: AppColor.onlyBlack,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text('updated',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 9)),
                        ),
                      ),
              ],
            ),
          ),
          IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey[400],
                size: 12,
              ),
              onPressed: () {})
        ],
      ),
    );
  }
}
