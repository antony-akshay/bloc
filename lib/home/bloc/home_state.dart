part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

class HomeInitial extends HomeState {
  final bool button;

  HomeInitial({this.button = false});
}

