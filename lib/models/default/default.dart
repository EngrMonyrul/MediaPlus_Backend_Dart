import 'package:json_annotation/json_annotation.dart';

part 'default.g.dart';

@JsonSerializable()
class Default {
  @JsonKey(name: "url")
  String? url;
  @JsonKey(name: "width")
  int? width;
  @JsonKey(name: "height")
  int? height;

  Default({
    this.url,
    this.width,
    this.height,
  });

  factory Default.fromJson(Map<String, dynamic> json) => _$DefaultFromJson(json);

  Map<String, dynamic> toJson() => _$DefaultToJson(this);
}