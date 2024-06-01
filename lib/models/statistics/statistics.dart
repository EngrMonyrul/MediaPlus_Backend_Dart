import 'package:json_annotation/json_annotation.dart';

part 'statistics.g.dart';

@JsonSerializable()
class Statistics {
  @JsonKey(name: "viewCount")
  String? viewCount;
  @JsonKey(name: "likeCount")
  String? likeCount;
  @JsonKey(name: "favoriteCount")
  String? favoriteCount;
  @JsonKey(name: "commentCount")
  String? commentCount;

  Statistics({
    this.viewCount,
    this.likeCount,
    this.favoriteCount,
    this.commentCount,
  });

  factory Statistics.fromJson(Map<String, dynamic> json) => _$StatisticsFromJson(json);

  Map<String, dynamic> toJson() => _$StatisticsToJson(this);
}