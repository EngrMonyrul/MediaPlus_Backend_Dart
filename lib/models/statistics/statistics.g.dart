// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Statistics _$StatisticsFromJson(Map<String, dynamic> json) => Statistics(
      viewCount: json['viewCount'] as String?,
      likeCount: json['likeCount'] as String?,
      favoriteCount: json['favoriteCount'] as String?,
      commentCount: json['commentCount'] as String?,
    );

Map<String, dynamic> _$StatisticsToJson(Statistics instance) =>
    <String, dynamic>{
      'viewCount': instance.viewCount,
      'likeCount': instance.likeCount,
      'favoriteCount': instance.favoriteCount,
      'commentCount': instance.commentCount,
    };
