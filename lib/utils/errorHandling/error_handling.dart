part of '../../mediaplusbackend.dart';

class ErrorHandling {
  static BaseResponse<T> error<T>(Object? error, StackTrace? stackTrace) {
    log("Error --->\n$error");
    log("Stack Trace --->\n$stackTrace");

    switch (error.runtimeType) {
      case DioException _:
        log("Dio Exception --->\n$DioException");
        return BaseResponse(success: false);
      default:
        return BaseResponse(success: false);
    }
  }
}
