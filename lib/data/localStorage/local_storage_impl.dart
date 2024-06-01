part of '../../mediaplusbackend.dart';

/// ### Local Storage Implementation
/// *** This class is implementation for local storage ***
class _LocalStorageImpl extends LocalStorage {
  _LocalStorageImpl() : _getStorage = GetStorage();

  /*-------------------> get storage instance <-------------------*/
  final GetStorage _getStorage;

  /*-------------------> local storage key's <-------------------*/
  final _base_url_ = "_base_url_";
  final _api_key_ = "_api_key_";

  /*-------------------> getter <-------------------*/
  @override
  String get apiKey => _getStorage.read(_base_url_) ?? "";

  @override
  String get baseUrl => _getStorage.read(_api_key_) ?? "";

  /*-------------------> setter <-------------------*/
  @override
  void setApiKey({required String value}) {
    _getStorage.write(_base_url_, value);
  }

  @override
  void setBaseUrl({required String value}) {
    _getStorage.write(_api_key_, value);
  }
}
