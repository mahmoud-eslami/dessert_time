import 'package:dessert_time/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/dessert_bloc/dessert_bloc.dart';
import 'bloc/dessert_bloc/dessert_event.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  ThemeData mainTheme = ThemeData(primarySwatch: Colors.pink,fontFamily: 'RobotoLight');
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<DessertBloc>(
      create: (context) => DessertBloc()..add(AppStart()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: mainTheme,
        home: Home(),
      ),
    );
  }
}
