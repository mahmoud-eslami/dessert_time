import 'package:dessert_time/model/dessert.dart';
import 'package:equatable/equatable.dart';

abstract class DessertEvent extends Equatable {
  const DessertEvent();

  @override
  List<Object> get props => [];
}

class AppStart extends DessertEvent {
  @override
  List<Object> get props => [];

  @override
  String toString() {
    return super.toString();
  }
}

class DessertItemOnTap extends DessertEvent {

  final Dessert selectedDessert;

  DessertItemOnTap({this.selectedDessert});

  @override
  List<Object> get props => [];

  @override
  String toString() {
    return super.toString();
  }
}
