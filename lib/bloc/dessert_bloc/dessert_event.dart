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
  @override
  List<Object> get props => [];

  @override
  String toString() {
    return super.toString();
  }
}
