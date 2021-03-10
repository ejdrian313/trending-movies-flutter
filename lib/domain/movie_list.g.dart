// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse<T> _$BaseResponseFromJson<T>(
  Map json,
  T Function(Object json) fromJsonT,
) {
  return BaseResponse<T>(
    json['total_pages'] as int,
    json['total_results'] as int,
    fromJsonT(json['results']),
  );
}

Map<String, dynamic> _$BaseResponseToJson<T>(
  BaseResponse<T> instance,
  Object Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'total_pages': instance.total_pages,
      'total_results': instance.total_results,
      'results': toJsonT(instance.data),
    };

_$_Movie _$_$_MovieFromJson(Map<String, dynamic> json) {
  return _$_Movie(
    json['id'] as int,
    json['original_language'] as String,
    json['original_title'] as String,
    json['poster_path'] as String,
    json['backdrop_path'] as String,
    json['overview'] as String,
    (json['vote_average'] as num)?.toDouble(),
    (json['popularity'] as num)?.toDouble(),
    json['vote_count'] as int,
  );
}

Map<String, dynamic> _$_$_MovieToJson(_$_Movie instance) => <String, dynamic>{
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

_$_MovieList _$_$_MovieListFromJson(Map<String, dynamic> json) {
  return _$_MovieList(
    (json['results'] as List)
        ?.map(
            (e) => e == null ? null : Movie.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_MovieListToJson(_$_MovieList instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
