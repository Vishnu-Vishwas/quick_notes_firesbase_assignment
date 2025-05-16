import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_notes/features/notes/domain/usecases/notes_use_cases.dart';

part 'add_notes_event.dart';
part 'add_notes_state.dart';

class AddNotesBloc extends Bloc<AddNotesEvent, AddNotesState> {
  final NotesUseCases notesUseCases;

  AddNotesBloc(this.notesUseCases) : super(AddNotesInitial()) {
    // on<AddNotesEvent>(_onAddNotes);
  }

  // void _onAddNotes(event, emit) {
  //   final response = notesUseCases.addNote();
  //
  //   response.fold(
  //     (error) => emit(AddNotesFailure(failureMessage: error)),
  //     (String success) =>
  //         emit(AddNotesSuccess(successMessage: success.toString())),
  //   );
  // }
}
