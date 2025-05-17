import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_notes/core/constants/text_constants.dart';
import 'package:quick_notes/core/errors.dart';
import 'package:quick_notes/features/notes/domain/entities/notes_entity.dart';
import 'package:quick_notes/features/notes/domain/usecases/notes_use_cases.dart';

part 'add_notes_event.dart';
part 'add_notes_state.dart';

class AddNotesBloc extends Bloc<AddNotesEvent, AddNotesState> {
  final NotesUseCases notesUseCases;

  AddNotesBloc(this.notesUseCases) : super(AddNotesInitial()) {
    on<AddNoteEvent>(_onAddNotes);
  }

  Future<void> _onAddNotes(event, emit) async {
    if (event.title.isEmpty || event.content.isEmpty) {
      emit(
        AddNotesFailureState(
          failureMessage: ValidateFailure(
            statusCode: -1,
            errorMessage: TextConstants.titleAndContentEmptyErrorMessage,
          ),
        ),
      );
      return;
    }

    final NotesEntity note = NotesEntity(
      title: event.title,
      content: event.content,
      timestamp: Timestamp.now(),
    );

    final result = await notesUseCases.addNote(note);
    print("Note Sent from the bloc");

    result.fold(
      (failure) => emit(AddNotesFailureState(failureMessage: failure)),
      (message) => emit(AddNotesSuccessState(successMessage: message)),
    );
  }
}
