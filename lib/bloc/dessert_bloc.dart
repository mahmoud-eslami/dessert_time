import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class DessertBloc extends Bloc<DessertEvent, DessertState> {
  @override
  DessertState get initialState => InitialDessertState();

  @override
  Stream<DessertState> mapEventToState(
    DessertEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
