part of '../../mediaplusbackend.dart';

@lazySingleton
class TrendingMediaRepo {
  TrendingMediaRepo(this._apiClient);

  final ApiClient _apiClient;

  /*-------------------> fetch trending videos <-------------------*/
  Future<BaseResponse<TrendingVideoResponse>> fetchTrendingVideos(
      {required String apiKey,
      required String regionCode,
      required int maxResult,
      String? nextPageToken}) async {
    return _apiClient
        .fetchTrendingVideos(apiKey, regionCode, maxResult, nextPageToken)
        .then((value) => value)
        .onError(ErrorHandling.error);
  }

  /*-------------------> fetch channel details <-------------------*/
  Future<BaseResponse<TrendingVideoResponse>> fetchChannelDetails(
      {required String channelName, required String apiKey}) async {
    return _apiClient
        .fetchChannelDetails(apiKey, channelName)
        .then((value) => value)
        .onError(ErrorHandling.error);
  }
}
