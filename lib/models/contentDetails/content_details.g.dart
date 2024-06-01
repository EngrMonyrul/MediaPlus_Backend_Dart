// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentDetails _$ContentDetailsFromJson(Map<String, dynamic> json) =>
    ContentDetails(
      duration: json['duration'] as String?,
      dimension: json['dimension'] as String?,
      definition: json['definition'] as String?,
      caption: json['caption'] as String?,
      licensedContent: json['licensedContent'] as bool?,
      contentRating: json['contentRating'] == null
          ? null
          : ContentRating.fromJson(
              json['contentRating'] as Map<String, dynamic>),
      projection: json['projection'] as String?,
    );

Map<String, dynamic> _$ContentDetailsToJson(ContentDetails instance) =>
    <String, dynamic>{
      'duration': instance.duration,
      'dimension': instance.dimension,
      'definition': instance.definition,
      'caption': instance.caption,
      'licensedContent': instance.licensedContent,
      'contentRating': instance.contentRating,
      'projection': instance.projection,
    };
