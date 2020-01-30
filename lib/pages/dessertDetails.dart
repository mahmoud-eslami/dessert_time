import 'package:dessert_time/model/dessert.dart';
import 'package:dessert_time/resource/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DetailsPage extends StatelessWidget {
  final Dessert dessert;

  const DetailsPage({Key key, @required this.dessert}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(dessert.background),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            elevation: 0,
            backgroundColor: Color(dessert.background),
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
                color: Color(dessert.iconColor),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.share),
                onPressed: () {},
                color: Color(dessert.iconColor),
              )
            ],
            flexibleSpace: _flexibleSpaceBar(dessert),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                _dessertPicture(dessert),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        _nutritionParameters(dessert),
                        SizedBox(
                          height: 15,
                        ),
                        _newsArea(dessert),
                        SizedBox(
                          height: 15,
                        ),
                        _photoSlider(dessert),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ],
        shrinkWrap: true,
      ),
    );
  }
}

Widget _photoSlider(Dessert dessert) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(color: AppColor.detailPageBorderColor),
      borderRadius: BorderRadius.circular(17),
    ),
    child: Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 15, top: 15),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.photo_size_select_actual,
                color: Color(dessert.iconColor),
                size: 15,
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                'Photos',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Text(
                '(10)',
                style: TextStyle(fontWeight: FontWeight.w100, fontSize: 10),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(padding: EdgeInsets.only(bottom: 20), child: _photoList()),
      ],
    ),
  );
}

Widget _photoList() {
  return SizedBox(
    height: 100,
    child: ListView.builder(
        padding: EdgeInsets.only(left: 10),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Material(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                clipBehavior: Clip.hardEdge,
                child: Image.asset(
                  'assets/images/cakee.jpg',
                  width: 100,
                )),
          );
        }),
  );
}

Widget _newsArea(Dessert dessert) {
  return Container(
    decoration: BoxDecoration(
        border: Border.all(color: AppColor.detailPageBorderColor),
        borderRadius: BorderRadius.circular(17)),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.error_outline,
                color: Color(dessert.iconColor),
                size: 15,
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                'Notice',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Per cent Daily Values are based on a 2,000'
            ' calories diet.Per cent Daily Values are based '
            'on a 2,000 calories dietPer cent Daily Values are '
            'based on a 2,000 calories diet',
            style: TextStyle(fontSize: 9, color: Colors.grey),
          ),
        ],
      ),
    ),
  );
}

Widget _nutritionParameters(Dessert dessert) {
  return Container(
    decoration: BoxDecoration(
        border: Border.all(color: AppColor.detailPageBorderColor),
        borderRadius: BorderRadius.circular(17)),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.format_list_bulleted,
                color: Color(dessert.iconColor),
                size: 15,
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                'Nutrition Facts',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.error_outline,
                size: 14,
                color: Colors.grey,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          NutritionChart(
            name: 'Water',
            weight: '19 g',
            percent: 10,
            dessert: dessert,
          ),
          NutritionChart(
            name: 'Oil',
            weight: '19 g',
            percent: 100,
            dessert: dessert,
          ),
          NutritionChart(
            name: 'Vitamin C',
            weight: '19 g',
            percent: 60,
            dessert: dessert,
          ),
          NutritionChart(
            name: 'Total Fat',
            weight: '19 g',
            percent: 70,
            dessert: dessert,
          ),
        ],
      ),
    ),
  );
}

Widget _dessertPicture(Dessert dessert) {
  return SizedBox(
    height: 170,
    child: Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
            color: Colors.white,
          ),
          height: 100,
        ),
        Align(
            alignment: Alignment.topCenter,
            child: Image.network(
              dessert.image,
              height: 140,
            )),
      ],
    ),
  );
}

Widget _flexibleSpaceBar(Dessert dessert) {
  return FlexibleSpaceBar(
    collapseMode: CollapseMode.pin,
    background: Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            dessert.country,
            maxLines: 1,
            style: TextStyle(
                color: Color(dessert.iconColor),
                fontWeight: FontWeight.bold,
                fontSize: 10),
          ),
          Text(
            dessert.name,
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
            dessert.desc,
            maxLines: 3,
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                height: 50,
                width: 50,
                child: FlatButton(
                  child: Icon(
                    Icons.favorite_border,
                    color: Color(dessert.iconColor),
                  ),
                    padding:  EdgeInsets.all(0),
                  color: Color(dessert.background),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Color(dessert.iconColor).withOpacity(.5)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(18),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    color: Color(dessert.iconColor),
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

class NutritionChart extends StatelessWidget {
  final String name;
  final String weight;
  final int percent;
  final Dessert dessert;

  const NutritionChart(
      {Key key, this.name, this.weight, this.percent, this.dessert})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
      child: SizedBox(
        height: 30,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  '$name',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 11,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    '$weight',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 10,
                        fontWeight: FontWeight.w100),
                    textAlign: TextAlign.left,
                  ),
                ),
                Text(
                  '$percent%',
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 11,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            SizedBox(
              height: 4,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(40)),
                  ),
                  LayoutBuilder(
                    builder: (context, constraint) {
                      return Container(
                        width: (constraint.maxWidth/100)*percent,
                        decoration: BoxDecoration(
                            color: Color(dessert.iconColor),
                            borderRadius: BorderRadius.circular(40)),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
