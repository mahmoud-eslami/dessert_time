import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dessert_time/api/dessert.dart';
import 'package:dessert_time/model/dessert.dart';
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
      try {
        yield InitialDessertState();
        await Future.delayed(Duration(seconds: 3));
        yield LoadingDessertListState();
        Response response = await DessertService.getInstance().get('/db');

        var data = response.data;
        if (response.statusCode == 200 && response != null) {
          var dessertList =
              List<Dessert>.from(data.map((item) => Dessert.fromJson(item)));
          print(dessertList);
          yield LoadedDessertListState(dessertList: dessertList);
        }
      } catch (e, s) {
        print('$e,$s');
      }
    }
  }
}
