import 'package:dessert_time/bloc/dessert_bloc.dart';
import 'package:dessert_time/bloc/dessert_event.dart';
import 'package:dessert_time/pages/home.dart';
import 'package:dessert_time/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<DessertBloc>(
      create: (context) => DessertBloc()..add(AppStart()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Baskervville',
        ),
        home: Home(),
      ),
    );
  }
}
