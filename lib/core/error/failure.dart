class Failure {
  final String? message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  int? code;
  Map? data;

  ServerFailure(
    String? message, {
    this.code,
    this.data,
  }) : super(message);
}

class CacheFailure extends Failure {
  CacheFailure({String? message}) : super(message);
}

class SecureStorageFailure extends Failure {
  SecureStorageFailure({String? message}) : super(message);
}

class InternetFailure extends Failure {
  InternetFailure({String? message}) : super(message);
}
