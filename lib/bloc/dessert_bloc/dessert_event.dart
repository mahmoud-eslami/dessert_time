import 'package:equatable/equatable.dart';

abstract class DessertEvent extends Equatable {
  const DessertEvent();

  @override
  // TODO: implement props
  List<Object> get props => [];
}

class AppStart extends DessertEvent {}
