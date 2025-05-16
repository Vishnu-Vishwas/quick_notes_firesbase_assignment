part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {}

final class GetAllNotesEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}
