import 'confirm_code_object.dart';
import 'confirm_code_reason.dart';

class ConfirmCodeResponse {
  final DateTime timeStamp;
  final int httpStatusCode;
  final String httpStatus;
  final ConfirmCodeReason? reason;
  final ConfirmCodeObject? responseObject;

  ConfirmCodeResponse({
    required this.timeStamp,
    required this.httpStatusCode,
    required this.httpStatus,
    required this.reason,
    required this.responseObject,
  });

  ConfirmCodeResponse copyWith({
    final DateTime? timeStamp,
    final int? httpStatusCode,
    final String? httpStatus,
    final ConfirmCodeReason? reason,
    final ConfirmCodeObject? responseObject,
  }) {
    return ConfirmCodeResponse(
      timeStamp: timeStamp ?? this.timeStamp,
      httpStatusCode: httpStatusCode ?? this.httpStatusCode,
      httpStatus: httpStatus ?? this.httpStatus,
      reason: reason ?? this.reason,
      responseObject: responseObject ?? this.responseObject,
    );
  }
}
