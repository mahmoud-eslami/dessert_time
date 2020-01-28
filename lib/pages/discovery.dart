import 'package:dessert_time/bloc/dessert_bloc/dessert_bloc.dart';
import 'package:dessert_time/bloc/dessert_bloc/dessert_state.dart';
import 'package:dessert_time/model/dessert.dart';
import 'package:dessert_time/pages/dessertDetails.dart';
import 'package:flutter/material.dart';
import 'package:dessert_time/resource/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DiscoveryPage extends StatelessWidget {

  List<Dessert> dessertList =[];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Discover dessert\naround the world',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Material(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      clipBehavior: Clip.hardEdge,
                      elevation: 13,
                      child: Image.asset(
                        'assets/images/profile.jpg',
                        fit: BoxFit.cover,
                        height: 35,
                        width: 35,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: CustomTabBar()),
              SizedBox(
                height: 20,
              ),
              BlocBuilder<DessertBloc, DessertState>(
                builder: (context, state) {
                  if(state is LoadedDessertListState){
                    dessertList = state.dessertList;
                  }
                  return SizedBox(
                    height: 240,
                    child: ListView.builder(
                      padding: EdgeInsets.only(left: 20),
                      scrollDirection: Axis.horizontal,
                      itemCount: dessertList.length,
                      itemBuilder: (context, index) => DessertItem(
                        image: dessertList[index].image,
                        country: dessertList[index].country,
                        name: dessertList[index].name,
                        description: dessertList[index].desc,
                        dessert: dessertList[index],
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Nearby CoffeShop',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 70,
                child: ListView.builder(
                  padding: EdgeInsets.only(left: 20),
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => ShopItem(
                    image: 'assets/images/shoppop.jpg',
                    shopName: 'bazzar',
                    description: 'it,s a fake shop fo test',
                    openTime: '9 - 13 AM',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTabBar extends StatelessWidget {
  final TextStyle style =
      TextStyle(color: AppColor.tabBarItemColor, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(height: 50),
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(10),
              child: SafeArea(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: CircleTabIndicator(
                        color: AppColor.tabBarIndicator, radius: 4),
                    isScrollable: true,
                    tabs: <Widget>[
                      Container(
                        child: Text('Cake',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: style),
                      ),
                      Container(
                        child: Text('Coco',
                            overflow: TextOverflow.ellipsis, style: style),
                      ),
                      Container(
                        child: Text('Ice Cream',
                            overflow: TextOverflow.ellipsis, style: style),
                      ),
                      Container(
                        child: Text('Drink',
                            overflow: TextOverflow.ellipsis, style: style),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final BoxPainter _boxPainter;

  CircleTabIndicator({@required Color color, @required double radius})
      : _boxPainter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([onChanged]) => _boxPainter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Offset circleOffset = offset +
        Offset(configuration.size.width + 10, configuration.size.height / 2);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}

class ShopItem extends StatelessWidget {
  final String image;
  final String shopName;
  final String description;
  final String openTime;

  const ShopItem(
      {Key key, this.image, this.shopName, this.description, this.openTime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        width: 180,
        decoration: BoxDecoration(
            color: AppColor.onlyWhite,
            borderRadius: BorderRadius.circular(17),
            border: Border.all(color: AppColor.shopItemBorderColor)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Material(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              clipBehavior: Clip.hardEdge,
              child: Image.asset(
                image,
                height: 40,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  shopName,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: AppColor.shopItemTextColor,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  description,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: AppColor.shopItemTextColor,
                      fontSize: 10,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  openTime,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: AppColor.shopItemTimeColor,
                      fontSize: 8,
                      fontWeight: FontWeight.w900),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DessertItem extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final String country;
  final Dessert dessert;

  const DessertItem(
      {Key key, this.image, this.name, this.description, this.country, this.dessert})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 240,
        width: 150,
        decoration: BoxDecoration(
          color: AppColor.dessertItemBkColor,
          borderRadius: BorderRadius.circular(17),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: InkWell(
            onTap: () {
              var dessert_Item = dessert;
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailsPage(dessert: dessert_Item,)));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.network(
                  image,
                  height: 90,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  country,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: AppColor.dessertCountryColor,
                      fontSize: 10,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  name,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: AppColor.dessertTitleColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  description,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: AppColor.dessertDesColor,
                      fontSize: 10,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
