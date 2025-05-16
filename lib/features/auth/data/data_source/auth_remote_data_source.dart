import 'package:dartz/dartz.dart';
import 'package:quick_notes/core/errors.dart';
import 'package:quick_notes/core/firebase/firebase_auth_service.dart';
import 'package:quick_notes/features/auth/data/models/user_model.dart';

abstract class AuthRemoteDataSource {
  // Future<Either<Failure, UserModel>> login(String username, String password) {
  //   return firebaseAuth.signIn(username, password, (userData) {
  //     UserModel.fromUserCreds(userData);
  //   });
  // }

  // signIn
  Future<Either<Failure, UserModel>> signIn(String email, String password);
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final FirebaseAuthService firebaseAuth;
  AuthRemoteDataSourceImpl({required this.firebaseAuth});

  @override
  Future<Either<Failure, UserModel>> signIn(
    String email,
    String password,
  ) async {
    final result = await firebaseAuth.signIn(email, password);
    return result.map((userCreds) => UserModel.fromUserCreds(userCreds));
  }
}
