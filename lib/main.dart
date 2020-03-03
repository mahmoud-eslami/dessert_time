import 'package:dessert_time/pages/home.dart';
import 'package:dessert_time/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/dessert_bloc/dessert_bloc.dart';
import 'bloc/dessert_bloc/dessert_event.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  ThemeData mainTheme = ThemeData(
    primarySwatch: Colors.indigo,
    fontFamily: 'RobotoLight',
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<DessertBloc>(
      create: (context) => DessertBloc()..add(AppStart()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dessert Time',
        theme: mainTheme,
        home: MainPage(),
      ),
    );
  }
}

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.arrow_back), onPressed: (){}),
                Text('Back')
              ],
            ),
            //**************************************************


            //here add Image Widget
            //**************************************************

            SizedBox(
              height: 30,
            ),
            Text("proccesed login for"),
            Text(
              "Login",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 100,
            ),
            Text('Username',style: TextStyle(fontSize: 15),),
            TextField(
              decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.person,
                    color: Colors.black,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Password',style: TextStyle(fontSize: 15),),
            TextField(
              decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.keyboard,
                    color: Colors.black,
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  onPressed: () {},
                  splashColor: Colors.pink,
                  color: Colors.pink,
                  textColor: Colors.white,
                  child: Text("Login"),
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),
            Center(
              child: FlatButton(
                onPressed: () {},
                child: Text("FotgetPass"),
                textColor: Colors.black,
                color: Colors.transparent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
