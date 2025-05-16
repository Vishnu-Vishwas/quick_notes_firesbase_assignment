import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:quick_notes/core/constants/text_constants.dart';
import 'package:quick_notes/core/errors.dart';
import 'package:quick_notes/core/firebase/firebase_constants.dart';

class FirebaseFirestoreService {
  final FirebaseFirestore firebaseFirestore;
  FirebaseFirestoreService({required this.firebaseFirestore});

  // get docs
  Stream<QuerySnapshot<Map<String, dynamic>>> streamCollection(
    String collectionPath,
  ) {
    final firebaseInstance =
        firebaseFirestore
            .collection(collectionPath)
            .orderBy(FirebaseConstants.timestamp, descending: true)
            .snapshots();
    print(firebaseInstance);
    return firebaseInstance;
  }

  // add
  Future<Either<Failure, String>> addDocuments(
    String collectionPath,
    Map<String, dynamic> data,
  ) async {
    // await firebaseFirestore.collection(collectionPath).add(data);
    try {
      await firebaseFirestore.collection(collectionPath).add(data);
      return const Right(TextConstants.firestoreSuccessMessage);
    } catch (error) {
      return Left(
        FirestoreServiceError(
          statusCode: -1,
          errorMessage: TextConstants.firestoreErrorMessage,
        ),
      );
    }
  }
}
