import 'package:dessert_time/bloc/dessert_bloc/dessert_bloc.dart';
import 'package:dessert_time/bloc/dessert_bloc/dessert_state.dart';
import 'package:dessert_time/pages/main_page.dart';
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
        if (state is InitialDessertState) {
          return SplashScreen();
        } else if (state is LoadingDessertListState) {
        } else if (state is LoadedDessertListState) {
        }
        return MainPage();
      },
    );
  }
}
