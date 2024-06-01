part of '../../../mediaplusbackend.dart';

/// ### Register all dependencies into service locator [GetIt] as [serviceLocator]
Future<void> regDi({required String baseUrl}) async {
  /*-------------------> register local storage <-------------------*/
  serviceLocator.registerLazySingleton<LocalStorage>(
    () => _LocalStorageImpl(),
  );
  /*-------------------> register api call <-------------------*/
  serviceLocator.registerLazySingleton<ApiClient>(
    () => ApiClient(
      Dio(
        BaseOptions(
          baseUrl: baseUrl,
        ),
      )..interceptors.add(
          CustomInterceptor(),
        ),
    ),
  );
}
