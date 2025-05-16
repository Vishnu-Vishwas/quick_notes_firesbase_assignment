part of 'home_bloc.dart';

sealed class HomeState extends Equatable {}

final class HomeInitialState extends HomeState {
  @override
  List<Object?> get props => [];
}

final class HomeLoadedState extends HomeState {
  final List<NotesEntity> notes;
  HomeLoadedState({required this.notes});

  @override
  List<Object?> get props => [notes];
}

final class HomeErrorState extends HomeState {
  final Failure failure;
  HomeErrorState({required this.failure});

  @override
  List<Object?> get props => [failure];
}
