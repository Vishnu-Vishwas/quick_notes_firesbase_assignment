import 'package:quick_notes/core/constants/text_constants.dart';

abstract class Failure {
  final int statusCode;
  final String errorMessage;

  const Failure({required this.statusCode, required this.errorMessage});
}

class AuthServiceError extends Failure {
  AuthServiceError({required super.statusCode, required super.errorMessage});
}

class UnExpectedError extends Failure {
  UnExpectedError({
    super.statusCode = -1,
    super.errorMessage = TextConstants.defaultErrorMessage,
  });
}
