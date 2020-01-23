import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dessert_time/api/dessert.dart';
import 'package:dio/dio.dart';
import 'dessert_event.dart';
import 'dessert_state.dart';

class DessertBloc extends Bloc<DessertEvent, DessertState> {
  @override
  DessertState get initialState => InitialDessertState();

  @override
  Stream<DessertState> mapEventToState(
    DessertEvent event,
  ) async* {
    if (event is AppStart) {
      yield InitialDessertState();
      await Future.delayed(Duration(seconds: 3));
      yield LoadingDessertListState();
      Response response = await DessertService.getInstance().get('/db');
      if(response.statusCode == 200 && response != null){
          yield LoadedDessertListState();
      }
    }
  }
}
