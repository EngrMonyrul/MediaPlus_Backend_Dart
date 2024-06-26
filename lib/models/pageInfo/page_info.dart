import 'package:json_annotation/json_annotation.dart';

part 'page_info.g.dart';

@JsonSerializable()
class PageInfo {
  @JsonKey(name: "totalResults")
  int? totalResults;
  @JsonKey(name: "resultsPerPage")
  int? resultsPerPage;

  PageInfo({
    this.totalResults,
    this.resultsPerPage,
  });

  factory PageInfo.fromJson(Map<String, dynamic> json) => _$PageInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PageInfoToJson(this);
}