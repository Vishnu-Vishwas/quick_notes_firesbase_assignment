part of 'add_notes_bloc.dart';

sealed class AddNotesState extends Equatable {}

final class AddNotesInitial extends AddNotesState {
  @override
  List<Object?> get props => throw UnimplementedError();
}

final class AddNotesSuccess extends AddNotesState {
  final String successMessage;
  AddNotesSuccess({required this.successMessage});

  @override
  List<Object?> get props => [successMessage];
}

final class AddNotesFailure extends AddNotesState {
  final String failureMessage;
  AddNotesFailure({required this.failureMessage});

  @override
  List<Object?> get props => [failureMessage];
}
