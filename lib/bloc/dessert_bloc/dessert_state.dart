import 'package:dessert_time/model/dessert.dart';
import 'package:equatable/equatable.dart';

abstract class DessertState extends Equatable {
  const DessertState();

  @override
  List<Object> get props => [];
}

class InitialDessertState extends DessertState {
  @override
  String toString() {
    return super.toString();
  }
}

class LoadingDessertListState extends DessertState {
  @override
  String toString() {
    return super.toString();
  }
}

class LoadedDessertListState extends DessertState {

  final List<Dessert> dessertList;

  LoadedDessertListState({this.dessertList});

  @override
  // TODO: implement props
  List<Object> get props => [dessertList];

  @override
  String toString() {
    return super.toString();
  }
}

class ErrorLoadingListState extends DessertState {
  @override
  String toString() {
    return super.toString();
  }
}
