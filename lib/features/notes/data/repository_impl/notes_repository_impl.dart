import 'package:dartz/dartz.dart';
import 'package:quick_notes/core/errors.dart';
import 'package:quick_notes/features/notes/data/data_source/notes_remote_data_source.dart';
import 'package:quick_notes/features/notes/data/models/notes_model.dart';
import 'package:quick_notes/features/notes/domain/entities/notes_entity.dart';
import 'package:quick_notes/features/notes/domain/respositories/notes_repository.dart';

class NotesRepositoryImpl extends NotesRepository {
  final NotesRemoteDataSource notesRemoteDataSource;
  NotesRepositoryImpl({required this.notesRemoteDataSource});

  @override
  Future<Either<Failure, String>> addNote(NotesEntity note) {
    final notesModel = NotesModel.fromEntity(note);
    return notesRemoteDataSource.addNote(notesModel);
  }

  @override
  Stream<Either<Failure, List<NotesModel>>> getAllNotes() {
    return notesRemoteDataSource.getAllNotes();
  }
}
