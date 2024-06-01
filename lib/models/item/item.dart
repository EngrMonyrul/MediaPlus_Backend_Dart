import 'package:json_annotation/json_annotation.dart';

import '../contentDetails/content_details.dart';
import '../snippet/snippet.dart';
import '../statistics/statistics.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {
  @JsonKey(name: "kind")
  String? kind;
  @JsonKey(name: "etag")
  String? etag;
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "snippet")
  Snippet? snippet;
  @JsonKey(name: "contentDetails")
  ContentDetails? contentDetails;
  @JsonKey(name: "statistics")
  Statistics? statistics;

  Item({
    this.kind,
    this.etag,
    this.id,
    this.snippet,
    this.contentDetails,
    this.statistics,
  });

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}