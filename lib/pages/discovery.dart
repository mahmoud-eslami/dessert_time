import 'package:dessert_time/bloc/dessert_bloc/dessert_bloc.dart';
import 'package:dessert_time/bloc/dessert_bloc/dessert_state.dart';
import 'package:dessert_time/model/dessert.dart';
import 'package:dessert_time/pages/dessertDetails.dart';
import 'package:dessert_time/pages/shopDetails.dart';
import 'package:flutter/material.dart';
import 'package:dessert_time/resource/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DiscoveryPage extends StatefulWidget {
  @override
  _DiscoveryPageState createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  List<Dessert> dessertList = [];
  List<Shop> shopList = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
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
                      borderRadius: BorderRadius.circular(14),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 13,
                    child: Image.asset(
                      'assets/images/profile.jpg',
                      fit: BoxFit.cover,
                      height: 40,
                      width: 40,
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
                if (state is LoadedDessertListState) {
                  dessertList = state.dessertList;
                }
                return SizedBox(
                  height: 220,
                  child: ListView.builder(
                    padding: EdgeInsets.only(left: 20),
                    scrollDirection: Axis.horizontal,
                    itemCount: dessertList.length,
                    itemBuilder: (context, index) => DessertItem(
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
            BlocBuilder<DessertBloc, DessertState>(
              builder: (context, state) {
                if (state is LoadedDessertListState) {
                  shopList = state.shopList;
                }
                return SizedBox(
                  height: 70,
                  child: ListView.builder(
                    padding: EdgeInsets.only(left: 20),
                    scrollDirection: Axis.horizontal,
                    itemCount: shopList.length,
                    itemBuilder: (context, index) => ShopItem(
                      shop: shopList[index],
                    ),
                  ),
                );
              },
            ),
          ],
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
                    labelStyle: style.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    unselectedLabelStyle: style.copyWith(
                        fontWeight: FontWeight.normal, color: Colors.black),
                    unselectedLabelColor: AppColor.tabBarItemColor,
                    labelColor: AppColor.tabBarItemColor,
                    isScrollable: true,
                    tabs: <Widget>[
                      Container(
                        child: Text(
                          'Cake',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        child: Text(
                          'Coco',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        child: Text(
                          'Ice Cream',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        child: Text(
                          'Drink',
                          overflow: TextOverflow.ellipsis,
                        ),
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
  final Shop shop;

  const ShopItem({Key key, this.shop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
            color: AppColor.onlyWhite,
            borderRadius: BorderRadius.circular(17),
            border: Border.all(color: AppColor.shopItemBorderColor)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShopDetailsPage(
                    shop: shop,
                  ),
                ),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Material(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.network(
                    shop.image,
                    height: 55,
                    width: 55,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        shop.name,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                            color: AppColor.shopItemTextColor,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        shop.desc,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                            color: AppColor.shopItemTextColor,
                            fontSize: 10,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        shop.openTime,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                            color: AppColor.shopItemTimeColor,
                            fontSize: 8,
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DessertItem extends StatelessWidget {
  final Dessert dessert;

  const DessertItem({Key key, this.dessert}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 240,
        width: 155,
        decoration: BoxDecoration(
          color: Color(dessert.background).withOpacity(.3),
          borderRadius: BorderRadius.circular(17),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: InkWell(
              onTap: () {
                var dessertItem = dessert;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DessertDetailsPage(
                      dessert: dessertItem,
                    ),
                  ),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Image.network(
                      dessert.image,
                      height: 90,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    dessert.country,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Color(dessert.iconColor),
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    dessert.name,
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
                    dessert.desc,
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
      ),
    );
  }
}
