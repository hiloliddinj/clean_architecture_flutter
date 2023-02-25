class ServerException implements Exception {
  String cause;
  int? code;
  Map? data;

  ServerException({
    required this.cause,
    this.code,
    this.data,
  });
}

class CacheException implements Exception {}

class SecureStorageException implements Exception {}
