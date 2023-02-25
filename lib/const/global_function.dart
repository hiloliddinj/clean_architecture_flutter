import '../core/error/failure.dart';
import 'errors/errors_ru.dart';

String mapFailureToMessage(Failure failure) {
  switch (failure.runtimeType) {
    case ServerFailure:
      return failure.message ?? ErrorRU.SERVER_FAILURE_MESSAGE;
    case InternetFailure:
      return ErrorRU.INTERNET_FAILURE_MESSAGE;
    case CacheFailure:
      return ErrorRU.CACHE_FAILURE_MESSAGE;
    default:
      return ErrorRU.UNEXPECTED_FAILURE_MESSAGE;
  }
}