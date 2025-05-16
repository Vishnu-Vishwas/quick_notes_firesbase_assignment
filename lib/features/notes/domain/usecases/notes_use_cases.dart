import 'package:dartz/dartz.dart';
import 'package:quick_notes/core/errors.dart';
import 'package:quick_notes/features/notes/domain/entities/notes_entity.dart';
import 'package:quick_notes/features/notes/domain/respositories/notes_repository.dart';

class NotesUseCases {
  final NotesRepository notesRepository;
  NotesUseCases({required this.notesRepository});

  Stream<Either<Failure, List<NotesEntity>>> getAllNotes() {
    return notesRepository.getAllNotes();
  }

  Future<Either<Failure, String>> addNote(NotesEntity note) {
    return notesRepository.addNote(note);
  }
}
