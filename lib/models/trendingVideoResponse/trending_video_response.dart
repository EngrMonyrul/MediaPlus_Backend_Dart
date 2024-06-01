import 'package:json_annotation/json_annotation.dart';

import '../item/item.dart';
import '../pageInfo/page_info.dart';

part 'trending_video_response.g.dart';

@JsonSerializable()
class TrendingVideoResponse {
  @JsonKey(name: "kind")
  String? kind;
  @JsonKey(name: "etag")
  String? etag;
  @JsonKey(name: "items")
  List<Item>? items;
  @JsonKey(name: "nextPageToken")
  String? nextPageToken;
  @JsonKey(name: "pageInfo")
  PageInfo? pageInfo;

  TrendingVideoResponse({
    this.kind,
    this.etag,
    this.items,
    this.nextPageToken,
    this.pageInfo,
  });

  factory TrendingVideoResponse.fromJson(Map<String, dynamic> json) =>
      _$TrendingVideoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TrendingVideoResponseToJson(this);
}
