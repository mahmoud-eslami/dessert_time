import 'package:equatable/equatable.dart';

abstract class DessertState extends Equatable {
  const DessertState();

  @override
  List<Object> get props => [];
}

class InitialDessertState extends DessertState {}

class LoadingDessertListState extends DessertState {}

class LoadedDessertListState extends DessertState {}

class ErrorLoadingListState extends DessertState {}
