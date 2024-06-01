import 'package:dio/dio.dart';
import 'package:mediaplusbackend/mediaplusbackend.dart';
import 'package:mediaplusbackend/models/baseResponse/base_response.dart';
import 'package:retrofit/http.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  /*-------------------> fetching trending videos <-------------------*/
  @GET(
      "videos?key={apiKey}&part=snippet,contentDetails,statistics&chart=mostPopular&regionCode={regionCode}&maxResults={maxResult}")
  Future<BaseResponse<TrendingVideoResponse>> fetchTrendingVideos(
    @Path() String apiKey,
    @Path() String regionCode,
    @Path() int maxResult,
    @Query("pageToken") String? nextPageToken,
  );

  /*-------------------> fetching channel details <-------------------*/
  @GET("channels?key={apiKey}&part=snippet&id={channelName}")
  Future<BaseResponse<TrendingVideoResponse>> fetchChannelDetails(
    @Path() String apiKey,
    @Path() String channelName,
  );
}
