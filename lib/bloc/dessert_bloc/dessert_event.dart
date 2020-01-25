import 'package:equatable/equatable.dart';

abstract class DessertEvent extends Equatable {
  const DessertEvent();

  @override
  List<Object> get props => [];
}

class AppStart extends DessertEvent {}

class DessertItemOnTap extends DessertEvent {}
