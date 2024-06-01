part of '../../../mediaplusbackend.dart';

/// ### Trending Media Provider Impl
/// *** implementation of trending media provider to expand functionalities ***
class _TrendingMediaProviderImpl extends TrendingMediaProvider {
  _TrendingMediaProviderImpl()
      : _localStorage = serviceLocator.get<LocalStorage>(),
        _trendingMediaRepo = serviceLocator.get<TrendingMediaRepo>();

  final TrendingMediaRepo _trendingMediaRepo;
  final LocalStorage _localStorage;

  @override
  Future<BaseResponse<TrendingVideoResponse>> fetchTrendingVideos(
      {String? nextPageToken}) async {
    if (nextPageToken == null) {
      _trendingVideos.clear();
    }
    try {
      final result = await _trendingMediaRepo.fetchTrendingVideos(
        apiKey: _localStorage.apiKey,
        regionCode: _regionCode,
        maxResult: _maxResult,
        nextPageToken: nextPageToken,
      );
      if (result.payload != null) {
        _trendingVideoResponse = result.payload;
        if (_trendingVideoResponse?.items != null) {
          _trendingVideos.addAll(_trendingVideoResponse!.items ?? []);
        }
      }
      notifyListeners();
      return result;
    } catch (e) {
      _trendingVideos.clear();
      notifyListeners();
      return BaseResponse();
    }
  }

  @override
  void setTotalResult({required int value}) {}

  @override
  void setRegionCode({required String value}) {
    _regionCode = value;
    notifyListeners();
  }

  @override
  void setLoading({required bool value}) {
    _loading = value;
    notifyListeners();
  }

  @override
  Future<TrendingVideoResponse> fetchChannelDetails(
      {required String channelName}) async {
    final result = await _trendingMediaRepo.fetchChannelDetails(
        channelName: channelName, apiKey: _localStorage.apiKey);
    if (result.payload != null) {
      _channelDetails = result.payload;
    }
    notifyListeners();
    return result.payload ?? TrendingVideoResponse();
  }
}
