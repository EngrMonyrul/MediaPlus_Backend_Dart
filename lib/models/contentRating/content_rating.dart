import 'package:json_annotation/json_annotation.dart';

part 'content_rating.g.dart';

@JsonSerializable()
class ContentRating {
  ContentRating();

  factory ContentRating.fromJson(Map<String, dynamic> json) => _$ContentRatingFromJson(json);

  Map<String, dynamic> toJson() => _$ContentRatingToJson(this);
}