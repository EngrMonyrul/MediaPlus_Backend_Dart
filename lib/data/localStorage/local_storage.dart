part of '../../mediaplusbackend.dart';

/// ### Local Storage
/// *** Shared pref for local storage ***
///
/// __Parameters__
/// * [baseUrl]
/// * [apiKey]
abstract class LocalStorage {
  /// get [string] base url
  String get baseUrl;

  /// get [string] api key
  String get apiKey;

  /// ### Set Base Url
  ///
  /// __Request__
  /// * [value] - [string]
  void setBaseUrl({required String value});

  /// ### Set Api Key
  ///
  /// __Request__
  /// * [value] - [string]
  void setApiKey({required String value});
}
