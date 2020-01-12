import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class DessertBloc extends Bloc<DessertEvent, DessertState> {
  @override
  DessertState get initialState => SplashState();

  @override
  Stream<DessertState> mapEventToState(
    DessertEvent event,
  ) async* {
    if(event is AppStart){
      await Future.delayed(Duration(seconds: 3));
      yield InitialDessertState();
    }
  }
}
