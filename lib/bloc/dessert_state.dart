import 'package:equatable/equatable.dart';

abstract class DessertState extends Equatable {
  const DessertState();
}

class InitialDessertState extends DessertState {
  @override
  List<Object> get props => [];
}
