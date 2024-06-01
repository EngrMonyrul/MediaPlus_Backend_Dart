import 'package:json_annotation/json_annotation.dart';

part 'localized.g.dart';

@JsonSerializable()
class Localized {
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "description")
  String? description;

  Localized({
    this.title,
    this.description,
  });

  factory Localized.fromJson(Map<String, dynamic> json) => _$LocalizedFromJson(json);

  Map<String, dynamic> toJson() => _$LocalizedToJson(this);
}