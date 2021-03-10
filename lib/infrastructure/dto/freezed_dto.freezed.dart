// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'freezed_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MovieDTO _$MovieDTOFromJson(Map<String, dynamic> json) {
  return _MovieDTO.fromJson(json);
}

/// @nodoc
class _$MovieDTOTearOff {
  const _$MovieDTOTearOff();

// ignore: unused_element
  _MovieDTO call(int id,
      {String original_language,
      String original_title,
      String poster_path,
      String backdrop_path,
      String overview,
      double vote_average,
      double popularity,
      int vote_count}) {
    return _MovieDTO(
      id,
      original_language: original_language,
      original_title: original_title,
      poster_path: poster_path,
      backdrop_path: backdrop_path,
      overview: overview,
      vote_average: vote_average,
      popularity: popularity,
      vote_count: vote_count,
    );
  }

// ignore: unused_element
  MovieDTO fromJson(Map<String, Object> json) {
    return MovieDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MovieDTO = _$MovieDTOTearOff();

/// @nodoc
mixin _$MovieDTO {
  int get id;
  String get original_language;
  String get original_title;
  String get poster_path;
  String get backdrop_path;
  String get overview;
  double get vote_average;
  double get popularity;
  int get vote_count;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $MovieDTOCopyWith<MovieDTO> get copyWith;
}

/// @nodoc
abstract class $MovieDTOCopyWith<$Res> {
  factory $MovieDTOCopyWith(MovieDTO value, $Res Function(MovieDTO) then) =
      _$MovieDTOCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String original_language,
      String original_title,
      String poster_path,
      String backdrop_path,
      String overview,
      double vote_average,
      double popularity,
      int vote_count});
}

/// @nodoc
class _$MovieDTOCopyWithImpl<$Res> implements $MovieDTOCopyWith<$Res> {
  _$MovieDTOCopyWithImpl(this._value, this._then);

  final MovieDTO _value;
  // ignore: unused_field
  final $Res Function(MovieDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object original_language = freezed,
    Object original_title = freezed,
    Object poster_path = freezed,
    Object backdrop_path = freezed,
    Object overview = freezed,
    Object vote_average = freezed,
    Object popularity = freezed,
    Object vote_count = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      original_language: original_language == freezed
          ? _value.original_language
          : original_language as String,
      original_title: original_title == freezed
          ? _value.original_title
          : original_title as String,
      poster_path:
          poster_path == freezed ? _value.poster_path : poster_path as String,
      backdrop_path: backdrop_path == freezed
          ? _value.backdrop_path
          : backdrop_path as String,
      overview: overview == freezed ? _value.overview : overview as String,
      vote_average: vote_average == freezed
          ? _value.vote_average
          : vote_average as double,
      popularity:
          popularity == freezed ? _value.popularity : popularity as double,
      vote_count: vote_count == freezed ? _value.vote_count : vote_count as int,
    ));
  }
}

/// @nodoc
abstract class _$MovieDTOCopyWith<$Res> implements $MovieDTOCopyWith<$Res> {
  factory _$MovieDTOCopyWith(_MovieDTO value, $Res Function(_MovieDTO) then) =
      __$MovieDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String original_language,
      String original_title,
      String poster_path,
      String backdrop_path,
      String overview,
      double vote_average,
      double popularity,
      int vote_count});
}

/// @nodoc
class __$MovieDTOCopyWithImpl<$Res> extends _$MovieDTOCopyWithImpl<$Res>
    implements _$MovieDTOCopyWith<$Res> {
  __$MovieDTOCopyWithImpl(_MovieDTO _value, $Res Function(_MovieDTO) _then)
      : super(_value, (v) => _then(v as _MovieDTO));

  @override
  _MovieDTO get _value => super._value as _MovieDTO;

  @override
  $Res call({
    Object id = freezed,
    Object original_language = freezed,
    Object original_title = freezed,
    Object poster_path = freezed,
    Object backdrop_path = freezed,
    Object overview = freezed,
    Object vote_average = freezed,
    Object popularity = freezed,
    Object vote_count = freezed,
  }) {
    return _then(_MovieDTO(
      id == freezed ? _value.id : id as int,
      original_language: original_language == freezed
          ? _value.original_language
          : original_language as String,
      original_title: original_title == freezed
          ? _value.original_title
          : original_title as String,
      poster_path:
          poster_path == freezed ? _value.poster_path : poster_path as String,
      backdrop_path: backdrop_path == freezed
          ? _value.backdrop_path
          : backdrop_path as String,
      overview: overview == freezed ? _value.overview : overview as String,
      vote_average: vote_average == freezed
          ? _value.vote_average
          : vote_average as double,
      popularity:
          popularity == freezed ? _value.popularity : popularity as double,
      vote_count: vote_count == freezed ? _value.vote_count : vote_count as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MovieDTO implements _MovieDTO {
  const _$_MovieDTO(this.id,
      {this.original_language,
      this.original_title,
      this.poster_path,
      this.backdrop_path,
      this.overview,
      this.vote_average,
      this.popularity,
      this.vote_count})
      : assert(id != null);

  factory _$_MovieDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_MovieDTOFromJson(json);

  @override
  final int id;
  @override
  final String original_language;
  @override
  final String original_title;
  @override
  final String poster_path;
  @override
  final String backdrop_path;
  @override
  final String overview;
  @override
  final double vote_average;
  @override
  final double popularity;
  @override
  final int vote_count;

  @override
  String toString() {
    return 'MovieDTO(id: $id, original_language: $original_language, original_title: $original_title, poster_path: $poster_path, backdrop_path: $backdrop_path, overview: $overview, vote_average: $vote_average, popularity: $popularity, vote_count: $vote_count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.original_language, original_language) ||
                const DeepCollectionEquality()
                    .equals(other.original_language, original_language)) &&
            (identical(other.original_title, original_title) ||
                const DeepCollectionEquality()
                    .equals(other.original_title, original_title)) &&
            (identical(other.poster_path, poster_path) ||
                const DeepCollectionEquality()
                    .equals(other.poster_path, poster_path)) &&
            (identical(other.backdrop_path, backdrop_path) ||
                const DeepCollectionEquality()
                    .equals(other.backdrop_path, backdrop_path)) &&
            (identical(other.overview, overview) ||
                const DeepCollectionEquality()
                    .equals(other.overview, overview)) &&
            (identical(other.vote_average, vote_average) ||
                const DeepCollectionEquality()
                    .equals(other.vote_average, vote_average)) &&
            (identical(other.popularity, popularity) ||
                const DeepCollectionEquality()
                    .equals(other.popularity, popularity)) &&
            (identical(other.vote_count, vote_count) ||
                const DeepCollectionEquality()
                    .equals(other.vote_count, vote_count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(original_language) ^
      const DeepCollectionEquality().hash(original_title) ^
      const DeepCollectionEquality().hash(poster_path) ^
      const DeepCollectionEquality().hash(backdrop_path) ^
      const DeepCollectionEquality().hash(overview) ^
      const DeepCollectionEquality().hash(vote_average) ^
      const DeepCollectionEquality().hash(popularity) ^
      const DeepCollectionEquality().hash(vote_count);

  @JsonKey(ignore: true)
  @override
  _$MovieDTOCopyWith<_MovieDTO> get copyWith =>
      __$MovieDTOCopyWithImpl<_MovieDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MovieDTOToJson(this);
  }
}

abstract class _MovieDTO implements MovieDTO {
  const factory _MovieDTO(int id,
      {String original_language,
      String original_title,
      String poster_path,
      String backdrop_path,
      String overview,
      double vote_average,
      double popularity,
      int vote_count}) = _$_MovieDTO;

  factory _MovieDTO.fromJson(Map<String, dynamic> json) = _$_MovieDTO.fromJson;

  @override
  int get id;
  @override
  String get original_language;
  @override
  String get original_title;
  @override
  String get poster_path;
  @override
  String get backdrop_path;
  @override
  String get overview;
  @override
  double get vote_average;
  @override
  double get popularity;
  @override
  int get vote_count;
  @override
  @JsonKey(ignore: true)
  _$MovieDTOCopyWith<_MovieDTO> get copyWith;
}
