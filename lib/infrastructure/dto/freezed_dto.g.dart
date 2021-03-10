// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezed_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDTO _$_$_MovieDTOFromJson(Map<String, dynamic> json) {
  return _$_MovieDTO(
    json['id'] as int,
    original_language: json['original_language'] as String,
    original_title: json['original_title'] as String,
    poster_path: json['poster_path'] as String,
    backdrop_path: json['backdrop_path'] as String,
    overview: json['overview'] as String,
    vote_average: (json['vote_average'] as num)?.toDouble(),
    popularity: (json['popularity'] as num)?.toDouble(),
    vote_count: json['vote_count'] as int,
  );
}

Map<String, dynamic> _$_$_MovieDTOToJson(_$_MovieDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'original_language': instance.original_language,
      'original_title': instance.original_title,
      'poster_path': instance.poster_path,
      'backdrop_path': instance.backdrop_path,
      'overview': instance.overview,
      'vote_average': instance.vote_average,
      'popularity': instance.popularity,
      'vote_count': instance.vote_count,
    };
