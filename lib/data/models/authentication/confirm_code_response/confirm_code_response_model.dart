import '../../../../domain/entities/authentication/confirm_code_response'
    '/confirm_code_response.dart';
import 'confirm_code_object_model.dart';
import 'confirm_code_reason_model.dart';

class ConfirmCodeResponseModel extends ConfirmCodeResponse {
  ConfirmCodeResponseModel({
    required DateTime timeStamp,
    required int httpStatusCode,
    required String httpStatus,
    ConfirmCodeReasonModel? reason,
    ConfirmCodeObjectModel? responseObject,
  }) : super(
          timeStamp: timeStamp,
          httpStatusCode: httpStatusCode,
          httpStatus: httpStatus,
          reason: reason,
          responseObject: responseObject,
        );

  ConfirmCodeResponseModel.fromJson(Map<String, dynamic> parsedJson)
      : super(
          timeStamp: DateTime.parse(parsedJson['timeStamp']),
          httpStatusCode: parsedJson['httpStatusCode'],
          httpStatus: parsedJson['httpStatus'],
          reason: parsedJson['reason'] != null
              ? ConfirmCodeReasonModel.fromJson(parsedJson['reason'])
              : null,
          responseObject: parsedJson['responseObject'] != null
              ? ConfirmCodeObjectModel.fromJson(parsedJson['responseObject'])
              : null,
        );
}
