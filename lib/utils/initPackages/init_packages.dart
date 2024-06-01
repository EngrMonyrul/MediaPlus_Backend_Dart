part of '../../mediaplusbackend.dart';

/// ### Init Packages
/// *** Init package for the project
Future<void> initPackages(
    {required String baseUrl, required String apiKey}) async {
  // init get storage
  await GetStorage.init();
  // register di
  await regDi(baseUrl: baseUrl).then((value) {
    // store base url
    // store api key
    serviceLocator.get<LocalStorage>()
      ..setApiKey(value: apiKey)
      ..setBaseUrl(value: baseUrl);
    // init di services
    configureDi();
  });
}
