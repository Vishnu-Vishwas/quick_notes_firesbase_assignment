import 'package:firebase_auth/firebase_auth.dart';
import 'package:quick_notes/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({super.userId, super.userName, super.email, super.password});

  factory UserModel.fromUserCreds(UserCredential userCredential) {
    final user = userCredential.user;

    return UserModel(
      userId: user!.uid,
      userName: user.displayName,
      email: user.email,
    );
  }
}
