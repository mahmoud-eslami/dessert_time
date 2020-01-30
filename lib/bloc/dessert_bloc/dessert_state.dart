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
  final List<Shop> shopList;

  LoadedDessertListState({this.dessertList,this.shopList});

  @override
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
