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
          bottomNavigationBar: CustomBottomNavigation(),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                SizedBox(
                  height: 20,
                ),
                DessertItem(
                  image: 'assets/images/cookie.png',
                  country: 'iran',
                  name: 'cake',
                  description: 'desasfqweasf',
                ),
              ],
            ),
          ),
        );
      },
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
    return Container(
      height: 200,
      width: 180,
      decoration: BoxDecoration(
        color: Colors.brown.withOpacity(.8),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(
              image,
              height: 90,
            ),
            Text(
              country,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              name,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
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
    );
  }
}

class CustomBottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 110,
      backgroundColor: Colors.brown,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          title: Text(
            '',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(
            Icons.home,
            color: Colors.white,
          ),
        ),
        BottomNavigationBarItem(
          title: Text(
            '',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
        BottomNavigationBarItem(
          title: Text(
            '',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(
            Icons.folder_open,
            color: Colors.white,
          ),
        ),
        BottomNavigationBarItem(
          title: Text(
            '',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(
            Icons.account_circle,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
