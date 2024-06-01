part of '../../mediaplusbackend.dart';

class CustomInterceptor implements InterceptorsWrapper {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log("Url --->\n${err.response?.realUri.path}\nError ---> ${err.error}");
    return handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final data = options.data;
    options.headers.addAll({
      // "User-Agent": "PostmanRuntime/7.39.0",
      "Accept": "*/*",
      "Cache-Control": "no-cache",
      // "Postman-Token": "d30aefaf-d6c8-44da-952b-7f5eadc928b4",
      "Host": "www.googleapis.com",
      "Accept-Encoding": "gzip, deflate, br",
      "Connection": "keep-alive",
    });
    log("Request Url --->\n${options.baseUrl}${options.path}\nRequest Body ---> $data");
    return handler.next(options.copyWith(data: data));
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final data = response.data as Map;
    data.putIfAbsent("status_code", () => response.statusCode);
    response.data = data;
    log("Request Url --->\n${response.realUri.path}\nData --->\n${response.data}");
    return handler.next(response);
  }
}
