import 'package:dessert_time/bloc/bloc.dart';
import 'package:dessert_time/pages/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DessertBloc, DessertState>(
      builder: (context, state) {
        if (state is SplashState) {
          return SplashScreen();
        } else if (state is InitialDessertState) {}
        return Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            child: CustomBottomNavigation(),
          ),
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Discover dessert\naround the world',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Image.asset(
                          'assets/images/cookie.png',
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: CustomTabBar()),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 220,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) => DessertItem(
                        image: 'assets/images/cookie.png',
                        country: 'iran',
                        name: 'cake$index',
                        description: 'desasfqweasf',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Nearby CoffeShop',
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
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) => ShopItem(
                        image: 'assets/images/cafe.png',
                        shopName: 'bazzar',
                        description: 'niceeee',
                        openTime: '9 - 13 AM',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class CustomTabBar extends StatelessWidget {
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
                child: TabBar(
                  indicatorColor: Colors.brown,
                  isScrollable: true,
                  tabs: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'cake',
                        style: TextStyle(
                            color: Colors.brown, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Ice Cream',
                        style: TextStyle(
                            color: Colors.brown, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Drink',
                        style: TextStyle(
                            color: Colors.brown, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Cup Cake',
                        style: TextStyle(
                            color: Colors.brown, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
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
        height: 80,
        width: 180,
        decoration: BoxDecoration(
          color: Colors.brown.withOpacity(.2),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            children: <Widget>[
              Image.asset(
                image,
                height: 50,
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: <Widget>[
                  Text(
                    shopName,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    openTime,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 8,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              )
            ],
          ),
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

  const DessertItem(
      {Key key, this.image, this.name, this.description, this.country})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 220,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.brown.withOpacity(.8),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(
                image,
                height: 90,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                country,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w900),
              ),
              Text(
                description,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomBottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 1,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 1,
      backgroundColor: Colors.brown,
      unselectedItemColor: Colors.blueAccent,
      selectedItemColor: Colors.blueAccent,
      onTap: (item){},
      selectedIconTheme: IconThemeData(color: Colors.amberAccent),
      unselectedIconTheme: IconThemeData(color: Colors.white),
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          title: Text(
            '',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(
            Icons.home,
          ),
        ),
        BottomNavigationBarItem(
          title: Text(
            '',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(
            Icons.search,
          ),
        ),
        BottomNavigationBarItem(
          title: Text(
            '',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(
            Icons.folder_open,
          ),
        ),
        BottomNavigationBarItem(
          title: Text(
            '',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(
            Icons.account_circle,
          ),
        ),
      ],
    );
  }
}
