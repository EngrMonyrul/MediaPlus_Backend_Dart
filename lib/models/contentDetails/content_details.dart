import 'package:json_annotation/json_annotation.dart';

import '../contentRating/content_rating.dart';

part 'content_details.g.dart';

@JsonSerializable()
class ContentDetails {
  @JsonKey(name: "duration")
  String? duration;
  @JsonKey(name: "dimension")
  String? dimension;
  @JsonKey(name: "definition")
  String? definition;
  @JsonKey(name: "caption")
  String? caption;
  @JsonKey(name: "licensedContent")
  bool? licensedContent;
  @JsonKey(name: "contentRating")
  ContentRating? contentRating;
  @JsonKey(name: "projection")
  String? projection;

  ContentDetails({
    this.duration,
    this.dimension,
    this.definition,
    this.caption,
    this.licensedContent,
    this.contentRating,
    this.projection,
  });

  factory ContentDetails.fromJson(Map<String, dynamic> json) => _$ContentDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$ContentDetailsToJson(this);
}