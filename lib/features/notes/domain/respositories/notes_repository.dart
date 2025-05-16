import 'package:dartz/dartz.dart';
import 'package:quick_notes/core/errors.dart';
import 'package:quick_notes/features/notes/data/models/notes_model.dart';
import 'package:quick_notes/features/notes/domain/entities/notes_entity.dart';

abstract class NotesRepository {
  Stream<Either<Failure, List<NotesModel>>> getAllNotes();
  Future<Either<Failure, String>> addNote(NotesEntity note);
}
