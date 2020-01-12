import 'package:equatable/equatable.dart';

abstract class DessertState extends Equatable {
  const DessertState();

  @override
  List<Object> get props => [];
}

class SplashState extends DessertState {}

class InitialDessertState extends DessertState {}

class LoadingDessertListState extends DessertState {}
