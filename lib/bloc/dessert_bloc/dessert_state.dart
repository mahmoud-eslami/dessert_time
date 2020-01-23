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
