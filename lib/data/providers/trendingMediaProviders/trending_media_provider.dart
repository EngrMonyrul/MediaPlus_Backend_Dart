part of '../../../mediaplusbackend.dart';

/// ### Trending Media Provider
/// *** This provider will provide all trending videos or media services ***
///
abstract class TrendingMediaProvider extends ChangeNotifier {
  /*-------------------> variables <-------------------*/

  /// variable to set total result per page
  int _maxResult = 20;

  /// region code variable to set regions
  String _regionCode = "BD";

  /// trending video variable
  TrendingVideoResponse? _trendingVideoResponse;

  /// loading variable
  bool _loading = false;

  /// pagination item variable
  List<Item> _trendingVideos = [];

  /// channel details variable
  TrendingVideoResponse? _channelDetails;

  /*-------------------> getter <-------------------*/
  int get maxResult => _maxResult;

  String get regionCode => _regionCode;

  TrendingVideoResponse? get trendingVideoResponse => _trendingVideoResponse;

  bool get loading => _loading;

  List<Item> get trendingVideos => _trendingVideos;

  TrendingVideoResponse? get channelDetails => _channelDetails;

  /*-------------------> setter <-------------------*/

  /// set total result
  void setTotalResult({required int value});

  /// set region code
  void setRegionCode({required String value});

  /// Fetch Trending Videos
  Future<BaseResponse<TrendingVideoResponse>> fetchTrendingVideos(
      {String? nextPageToken});

  /// set loading
  void setLoading({required bool value});

  /// fetch channel details
  Future<TrendingVideoResponse> fetchChannelDetails({required String channelName});
}
