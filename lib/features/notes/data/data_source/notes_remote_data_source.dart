import 'package:dartz/dartz.dart';
import 'package:quick_notes/core/constants/text_constants.dart';
import 'package:quick_notes/core/errors.dart';
import 'package:quick_notes/core/firebase/firebase_constants.dart';
import 'package:quick_notes/core/firebase/firebase_firestore_service.dart';
import 'package:quick_notes/features/notes/data/models/notes_model.dart';

abstract class NotesRemoteDataSource {
  Future<Either<Failure, String>> addNote(NotesModel data);
  Stream<Either<Failure, List<NotesModel>>> getAllNotes();
}

class NotesRemoteDataSourceImpl extends NotesRemoteDataSource {
  final FirebaseFirestoreService firebaseFirestoreService;
  NotesRemoteDataSourceImpl({required this.firebaseFirestoreService});

  @override
  Stream<Either<Failure, List<NotesModel>>> getAllNotes() {
    return firebaseFirestoreService
        .streamCollection(FirebaseConstants.notes)
        .map((snapshot) {
          try {
            final notesList =
                snapshot.docs.map((doc) {
                  final data = doc.data();
                  return NotesModel.fromJson(data);
                }).toList();
            // final notesList =
            //     snapshot.docs.map((doc) {
            //       return NotesModel.fromSnapshot(doc);
            //     }).toList();

            print('Fetched ${snapshot.docs.length} docs from Firestore');
            for (var doc in snapshot.docs) {
              print('DocID: ${doc.id}, Data: ${doc.data()}');
            }

            return Right(notesList);
          } catch (error) {
            return Left(
              FirestoreServiceError(
                statusCode: -1,
                errorMessage: TextConstants.firestoreErrorMessage,
              ),
            );
          }
        });
  }

  @override
  Future<Either<Failure, String>> addNote(NotesModel notesModel) {
    final notesMap = notesModel.toJson();
    return firebaseFirestoreService.addDocuments(
      FirebaseConstants.notes,
      notesMap,
    );
  }
}
