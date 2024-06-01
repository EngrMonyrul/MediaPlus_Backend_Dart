import 'package:json_annotation/json_annotation.dart';
import '../default/default.dart';

part 'thumbnails.g.dart';

@JsonSerializable()
class Thumbnails {
  @JsonKey(name: "default")
  Default? thumbnailsDefault;
  @JsonKey(name: "medium")
  Default? medium;
  @JsonKey(name: "high")
  Default? high;
  @JsonKey(name: "standard")
  Default? standard;
  @JsonKey(name: "maxres")
  Default? maxres;

  Thumbnails({
    this.thumbnailsDefault,
    this.medium,
    this.high,
    this.standard,
    this.maxres,
  });

  factory Thumbnails.fromJson(Map<String, dynamic> json) => _$ThumbnailsFromJson(json);

  Map<String, dynamic> toJson() => _$ThumbnailsToJson(this);
}