part of 'add_notes_bloc.dart';

sealed class AddNotesState extends Equatable {}

final class AddNotesInitial extends AddNotesState {
  @override
  List<Object?> get props => throw UnimplementedError();
}

final class AddNotesSuccessState extends AddNotesState {
  final String successMessage;
  AddNotesSuccessState({required this.successMessage});

  @override
  List<Object?> get props => [successMessage];
}

final class AddNotesFailureState extends AddNotesState {
  final Failure failureMessage;
  AddNotesFailureState({required this.failureMessage});

  @override
  List<Object?> get props => [failureMessage];
}
