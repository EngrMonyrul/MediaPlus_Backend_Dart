import 'package:json_annotation/json_annotation.dart';

import '../localized/localized.dart';
import '../thumbnails/thumbnails.dart';

part 'snippet.g.dart';

@JsonSerializable()
class Snippet {
  @JsonKey(name: "publishedAt")
  DateTime? publishedAt;
  @JsonKey(name: "channelId")
  String? channelId;
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "thumbnails")
  Thumbnails? thumbnails;
  @JsonKey(name: "channelTitle")
  String? channelTitle;
  @JsonKey(name: "tags")
  List<String>? tags;
  @JsonKey(name: "categoryId")
  String? categoryId;
  @JsonKey(name: "liveBroadcastContent")
  String? liveBroadcastContent;
  @JsonKey(name: "defaultLanguage")
  String? defaultLanguage;
  @JsonKey(name: "localized")
  Localized? localized;
  @JsonKey(name: "defaultAudioLanguage")
  String? defaultAudioLanguage;

  Snippet({
    this.publishedAt,
    this.channelId,
    this.title,
    this.description,
    this.thumbnails,
    this.channelTitle,
    this.tags,
    this.categoryId,
    this.liveBroadcastContent,
    this.defaultLanguage,
    this.localized,
    this.defaultAudioLanguage,
  });

  factory Snippet.fromJson(Map<String, dynamic> json) => _$SnippetFromJson(json);

  Map<String, dynamic> toJson() => _$SnippetToJson(this);
}