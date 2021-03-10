// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'movie_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Movie _$MovieFromJson(Map<String, dynamic> json) {
  return _Movie.fromJson(json);
}

/// @nodoc
class _$MovieTearOff {
  const _$MovieTearOff();

// ignore: unused_element
  _Movie call(
      int id,
      String original_language,
      String original_title,
      String poster_path,
      String backdrop_path,
      String overview,
      double vote_average,
      double popularity,
      int vote_count) {
    return _Movie(
      id,
      original_language,
      original_title,
      poster_path,
      backdrop_path,
      overview,
      vote_average,
      popularity,
      vote_count,
    );
  }

// ignore: unused_element
  Movie fromJson(Map<String, Object> json) {
    return Movie.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Movie = _$MovieTearOff();

/// @nodoc
mixin _$Movie {
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
  $MovieCopyWith<Movie> get copyWith;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res>;
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
class _$MovieCopyWithImpl<$Res> implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  final Movie _value;
  // ignore: unused_field
  final $Res Function(Movie) _then;

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
abstract class _$MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$MovieCopyWith(_Movie value, $Res Function(_Movie) then) =
      __$MovieCopyWithImpl<$Res>;
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
class __$MovieCopyWithImpl<$Res> extends _$MovieCopyWithImpl<$Res>
    implements _$MovieCopyWith<$Res> {
  __$MovieCopyWithImpl(_Movie _value, $Res Function(_Movie) _then)
      : super(_value, (v) => _then(v as _Movie));

  @override
  _Movie get _value => super._value as _Movie;

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
    return _then(_Movie(
      id == freezed ? _value.id : id as int,
      original_language == freezed
          ? _value.original_language
          : original_language as String,
      original_title == freezed
          ? _value.original_title
          : original_title as String,
      poster_path == freezed ? _value.poster_path : poster_path as String,
      backdrop_path == freezed ? _value.backdrop_path : backdrop_path as String,
      overview == freezed ? _value.overview : overview as String,
      vote_average == freezed ? _value.vote_average : vote_average as double,
      popularity == freezed ? _value.popularity : popularity as double,
      vote_count == freezed ? _value.vote_count : vote_count as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Movie implements _Movie {
  _$_Movie(
      this.id,
      this.original_language,
      this.original_title,
      this.poster_path,
      this.backdrop_path,
      this.overview,
      this.vote_average,
      this.popularity,
      this.vote_count)
      : assert(id != null),
        assert(original_language != null),
        assert(original_title != null),
        assert(poster_path != null),
        assert(backdrop_path != null),
        assert(overview != null),
        assert(vote_average != null),
        assert(popularity != null),
        assert(vote_count != null);

  factory _$_Movie.fromJson(Map<String, dynamic> json) =>
      _$_$_MovieFromJson(json);

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
    return 'Movie(id: $id, original_language: $original_language, original_title: $original_title, poster_path: $poster_path, backdrop_path: $backdrop_path, overview: $overview, vote_average: $vote_average, popularity: $popularity, vote_count: $vote_count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Movie &&
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
  _$MovieCopyWith<_Movie> get copyWith =>
      __$MovieCopyWithImpl<_Movie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MovieToJson(this);
  }
}

abstract class _Movie implements Movie {
  factory _Movie(
      int id,
      String original_language,
      String original_title,
      String poster_path,
      String backdrop_path,
      String overview,
      double vote_average,
      double popularity,
      int vote_count) = _$_Movie;

  factory _Movie.fromJson(Map<String, dynamic> json) = _$_Movie.fromJson;

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
  _$MovieCopyWith<_Movie> get copyWith;
}

MovieList _$MovieListFromJson(Map<String, dynamic> json) {
  return _MovieList.fromJson(json);
}

/// @nodoc
class _$MovieListTearOff {
  const _$MovieListTearOff();

// ignore: unused_element
  _MovieList call(List<Movie> results) {
    return _MovieList(
      results,
    );
  }

// ignore: unused_element
  MovieList fromJson(Map<String, Object> json) {
    return MovieList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MovieList = _$MovieListTearOff();

/// @nodoc
mixin _$MovieList {
  List<Movie> get results;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $MovieListCopyWith<MovieList> get copyWith;
}

/// @nodoc
abstract class $MovieListCopyWith<$Res> {
  factory $MovieListCopyWith(MovieList value, $Res Function(MovieList) then) =
      _$MovieListCopyWithImpl<$Res>;
  $Res call({List<Movie> results});
}

/// @nodoc
class _$MovieListCopyWithImpl<$Res> implements $MovieListCopyWith<$Res> {
  _$MovieListCopyWithImpl(this._value, this._then);

  final MovieList _value;
  // ignore: unused_field
  final $Res Function(MovieList) _then;

  @override
  $Res call({
    Object results = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed ? _value.results : results as List<Movie>,
    ));
  }
}

/// @nodoc
abstract class _$MovieListCopyWith<$Res> implements $MovieListCopyWith<$Res> {
  factory _$MovieListCopyWith(
          _MovieList value, $Res Function(_MovieList) then) =
      __$MovieListCopyWithImpl<$Res>;
  @override
  $Res call({List<Movie> results});
}

/// @nodoc
class __$MovieListCopyWithImpl<$Res> extends _$MovieListCopyWithImpl<$Res>
    implements _$MovieListCopyWith<$Res> {
  __$MovieListCopyWithImpl(_MovieList _value, $Res Function(_MovieList) _then)
      : super(_value, (v) => _then(v as _MovieList));

  @override
  _MovieList get _value => super._value as _MovieList;

  @override
  $Res call({
    Object results = freezed,
  }) {
    return _then(_MovieList(
      results == freezed ? _value.results : results as List<Movie>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MovieList implements _MovieList {
  const _$_MovieList(this.results) : assert(results != null);

  factory _$_MovieList.fromJson(Map<String, dynamic> json) =>
      _$_$_MovieListFromJson(json);

  @override
  final List<Movie> results;

  @override
  String toString() {
    return 'MovieList(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieList &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(results);

  @JsonKey(ignore: true)
  @override
  _$MovieListCopyWith<_MovieList> get copyWith =>
      __$MovieListCopyWithImpl<_MovieList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MovieListToJson(this);
  }
}

abstract class _MovieList implements MovieList {
  const factory _MovieList(List<Movie> results) = _$_MovieList;

  factory _MovieList.fromJson(Map<String, dynamic> json) =
      _$_MovieList.fromJson;

  @override
  List<Movie> get results;
  @override
  @JsonKey(ignore: true)
  _$MovieListCopyWith<_MovieList> get copyWith;
}

/// @nodoc
class _$MoviesEventTwoTearOff {
  const _$MoviesEventTwoTearOff();

// ignore: unused_element
  TrendingEither trendingEither() {
    return const TrendingEither();
  }

// ignore: unused_element
  Similar similar(Movie movie) {
    return Similar(
      movie,
    );
  }

// ignore: unused_element
  TrendingOption trendingOption() {
    return const TrendingOption();
  }
}

/// @nodoc
// ignore: unused_element
const $MoviesEventTwo = _$MoviesEventTwoTearOff();

/// @nodoc
mixin _$MoviesEventTwo {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult trendingEither(),
    @required TResult similar(Movie movie),
    @required TResult trendingOption(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult trendingEither(),
    TResult similar(Movie movie),
    TResult trendingOption(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult trendingEither(TrendingEither value),
    @required TResult similar(Similar value),
    @required TResult trendingOption(TrendingOption value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult trendingEither(TrendingEither value),
    TResult similar(Similar value),
    TResult trendingOption(TrendingOption value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $MoviesEventTwoCopyWith<$Res> {
  factory $MoviesEventTwoCopyWith(
          MoviesEventTwo value, $Res Function(MoviesEventTwo) then) =
      _$MoviesEventTwoCopyWithImpl<$Res>;
}

/// @nodoc
class _$MoviesEventTwoCopyWithImpl<$Res>
    implements $MoviesEventTwoCopyWith<$Res> {
  _$MoviesEventTwoCopyWithImpl(this._value, this._then);

  final MoviesEventTwo _value;
  // ignore: unused_field
  final $Res Function(MoviesEventTwo) _then;
}

/// @nodoc
abstract class $TrendingEitherCopyWith<$Res> {
  factory $TrendingEitherCopyWith(
          TrendingEither value, $Res Function(TrendingEither) then) =
      _$TrendingEitherCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrendingEitherCopyWithImpl<$Res>
    extends _$MoviesEventTwoCopyWithImpl<$Res>
    implements $TrendingEitherCopyWith<$Res> {
  _$TrendingEitherCopyWithImpl(
      TrendingEither _value, $Res Function(TrendingEither) _then)
      : super(_value, (v) => _then(v as TrendingEither));

  @override
  TrendingEither get _value => super._value as TrendingEither;
}

/// @nodoc
class _$TrendingEither implements TrendingEither {
  const _$TrendingEither();

  @override
  String toString() {
    return 'MoviesEventTwo.trendingEither()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TrendingEither);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult trendingEither(),
    @required TResult similar(Movie movie),
    @required TResult trendingOption(),
  }) {
    assert(trendingEither != null);
    assert(similar != null);
    assert(trendingOption != null);
    return trendingEither();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult trendingEither(),
    TResult similar(Movie movie),
    TResult trendingOption(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (trendingEither != null) {
      return trendingEither();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult trendingEither(TrendingEither value),
    @required TResult similar(Similar value),
    @required TResult trendingOption(TrendingOption value),
  }) {
    assert(trendingEither != null);
    assert(similar != null);
    assert(trendingOption != null);
    return trendingEither(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult trendingEither(TrendingEither value),
    TResult similar(Similar value),
    TResult trendingOption(TrendingOption value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (trendingEither != null) {
      return trendingEither(this);
    }
    return orElse();
  }
}

abstract class TrendingEither implements MoviesEventTwo {
  const factory TrendingEither() = _$TrendingEither;
}

/// @nodoc
abstract class $SimilarCopyWith<$Res> {
  factory $SimilarCopyWith(Similar value, $Res Function(Similar) then) =
      _$SimilarCopyWithImpl<$Res>;
  $Res call({Movie movie});

  $MovieCopyWith<$Res> get movie;
}

/// @nodoc
class _$SimilarCopyWithImpl<$Res> extends _$MoviesEventTwoCopyWithImpl<$Res>
    implements $SimilarCopyWith<$Res> {
  _$SimilarCopyWithImpl(Similar _value, $Res Function(Similar) _then)
      : super(_value, (v) => _then(v as Similar));

  @override
  Similar get _value => super._value as Similar;

  @override
  $Res call({
    Object movie = freezed,
  }) {
    return _then(Similar(
      movie == freezed ? _value.movie : movie as Movie,
    ));
  }

  @override
  $MovieCopyWith<$Res> get movie {
    if (_value.movie == null) {
      return null;
    }
    return $MovieCopyWith<$Res>(_value.movie, (value) {
      return _then(_value.copyWith(movie: value));
    });
  }
}

/// @nodoc
class _$Similar implements Similar {
  const _$Similar(this.movie) : assert(movie != null);

  @override
  final Movie movie;

  @override
  String toString() {
    return 'MoviesEventTwo.similar(movie: $movie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Similar &&
            (identical(other.movie, movie) ||
                const DeepCollectionEquality().equals(other.movie, movie)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movie);

  @JsonKey(ignore: true)
  @override
  $SimilarCopyWith<Similar> get copyWith =>
      _$SimilarCopyWithImpl<Similar>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult trendingEither(),
    @required TResult similar(Movie movie),
    @required TResult trendingOption(),
  }) {
    assert(trendingEither != null);
    assert(similar != null);
    assert(trendingOption != null);
    return similar(movie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult trendingEither(),
    TResult similar(Movie movie),
    TResult trendingOption(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (similar != null) {
      return similar(movie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult trendingEither(TrendingEither value),
    @required TResult similar(Similar value),
    @required TResult trendingOption(TrendingOption value),
  }) {
    assert(trendingEither != null);
    assert(similar != null);
    assert(trendingOption != null);
    return similar(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult trendingEither(TrendingEither value),
    TResult similar(Similar value),
    TResult trendingOption(TrendingOption value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (similar != null) {
      return similar(this);
    }
    return orElse();
  }
}

abstract class Similar implements MoviesEventTwo {
  const factory Similar(Movie movie) = _$Similar;

  Movie get movie;
  @JsonKey(ignore: true)
  $SimilarCopyWith<Similar> get copyWith;
}

/// @nodoc
abstract class $TrendingOptionCopyWith<$Res> {
  factory $TrendingOptionCopyWith(
          TrendingOption value, $Res Function(TrendingOption) then) =
      _$TrendingOptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrendingOptionCopyWithImpl<$Res>
    extends _$MoviesEventTwoCopyWithImpl<$Res>
    implements $TrendingOptionCopyWith<$Res> {
  _$TrendingOptionCopyWithImpl(
      TrendingOption _value, $Res Function(TrendingOption) _then)
      : super(_value, (v) => _then(v as TrendingOption));

  @override
  TrendingOption get _value => super._value as TrendingOption;
}

/// @nodoc
class _$TrendingOption implements TrendingOption {
  const _$TrendingOption();

  @override
  String toString() {
    return 'MoviesEventTwo.trendingOption()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TrendingOption);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult trendingEither(),
    @required TResult similar(Movie movie),
    @required TResult trendingOption(),
  }) {
    assert(trendingEither != null);
    assert(similar != null);
    assert(trendingOption != null);
    return trendingOption();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult trendingEither(),
    TResult similar(Movie movie),
    TResult trendingOption(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (trendingOption != null) {
      return trendingOption();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult trendingEither(TrendingEither value),
    @required TResult similar(Similar value),
    @required TResult trendingOption(TrendingOption value),
  }) {
    assert(trendingEither != null);
    assert(similar != null);
    assert(trendingOption != null);
    return trendingOption(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult trendingEither(TrendingEither value),
    TResult similar(Similar value),
    TResult trendingOption(TrendingOption value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (trendingOption != null) {
      return trendingOption(this);
    }
    return orElse();
  }
}

abstract class TrendingOption implements MoviesEventTwo {
  const factory TrendingOption() = _$TrendingOption;
}

/// @nodoc
class _$MoviesStateTwoTearOff {
  const _$MoviesStateTwoTearOff();

// ignore: unused_element
  Loading loading() {
    return const Loading();
  }

// ignore: unused_element
  Loaded loaded(MovieList movieList) {
    return Loaded(
      movieList,
    );
  }

// ignore: unused_element
  Empty empty() {
    return const Empty();
  }

// ignore: unused_element
  Error error() {
    return const Error();
  }
}

/// @nodoc
// ignore: unused_element
const $MoviesStateTwo = _$MoviesStateTwoTearOff();

/// @nodoc
mixin _$MoviesStateTwo {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult loaded(MovieList movieList),
    @required TResult empty(),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult loaded(MovieList movieList),
    TResult empty(),
    TResult error(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(Loading value),
    @required TResult loaded(Loaded value),
    @required TResult empty(Empty value),
    @required TResult error(Error value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    TResult empty(Empty value),
    TResult error(Error value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $MoviesStateTwoCopyWith<$Res> {
  factory $MoviesStateTwoCopyWith(
          MoviesStateTwo value, $Res Function(MoviesStateTwo) then) =
      _$MoviesStateTwoCopyWithImpl<$Res>;
}

/// @nodoc
class _$MoviesStateTwoCopyWithImpl<$Res>
    implements $MoviesStateTwoCopyWith<$Res> {
  _$MoviesStateTwoCopyWithImpl(this._value, this._then);

  final MoviesStateTwo _value;
  // ignore: unused_field
  final $Res Function(MoviesStateTwo) _then;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$MoviesStateTwoCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'MoviesStateTwo.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult loaded(MovieList movieList),
    @required TResult empty(),
    @required TResult error(),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(empty != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult loaded(MovieList movieList),
    TResult empty(),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(Loading value),
    @required TResult loaded(Loaded value),
    @required TResult empty(Empty value),
    @required TResult error(Error value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(empty != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    TResult empty(Empty value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements MoviesStateTwo {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({MovieList movieList});

  $MovieListCopyWith<$Res> get movieList;
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$MoviesStateTwoCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object movieList = freezed,
  }) {
    return _then(Loaded(
      movieList == freezed ? _value.movieList : movieList as MovieList,
    ));
  }

  @override
  $MovieListCopyWith<$Res> get movieList {
    if (_value.movieList == null) {
      return null;
    }
    return $MovieListCopyWith<$Res>(_value.movieList, (value) {
      return _then(_value.copyWith(movieList: value));
    });
  }
}

/// @nodoc
class _$Loaded implements Loaded {
  const _$Loaded(this.movieList) : assert(movieList != null);

  @override
  final MovieList movieList;

  @override
  String toString() {
    return 'MoviesStateTwo.loaded(movieList: $movieList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.movieList, movieList) ||
                const DeepCollectionEquality()
                    .equals(other.movieList, movieList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movieList);

  @JsonKey(ignore: true)
  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult loaded(MovieList movieList),
    @required TResult empty(),
    @required TResult error(),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(empty != null);
    assert(error != null);
    return loaded(movieList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult loaded(MovieList movieList),
    TResult empty(),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(movieList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(Loading value),
    @required TResult loaded(Loaded value),
    @required TResult empty(Empty value),
    @required TResult error(Error value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(empty != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    TResult empty(Empty value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements MoviesStateTwo {
  const factory Loaded(MovieList movieList) = _$Loaded;

  MovieList get movieList;
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith;
}

/// @nodoc
abstract class $EmptyCopyWith<$Res> {
  factory $EmptyCopyWith(Empty value, $Res Function(Empty) then) =
      _$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyCopyWithImpl<$Res> extends _$MoviesStateTwoCopyWithImpl<$Res>
    implements $EmptyCopyWith<$Res> {
  _$EmptyCopyWithImpl(Empty _value, $Res Function(Empty) _then)
      : super(_value, (v) => _then(v as Empty));

  @override
  Empty get _value => super._value as Empty;
}

/// @nodoc
class _$Empty implements Empty {
  const _$Empty();

  @override
  String toString() {
    return 'MoviesStateTwo.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult loaded(MovieList movieList),
    @required TResult empty(),
    @required TResult error(),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(empty != null);
    assert(error != null);
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult loaded(MovieList movieList),
    TResult empty(),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(Loading value),
    @required TResult loaded(Loaded value),
    @required TResult empty(Empty value),
    @required TResult error(Error value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(empty != null);
    assert(error != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    TResult empty(Empty value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty implements MoviesStateTwo {
  const factory Empty() = _$Empty;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$MoviesStateTwoCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;
}

/// @nodoc
class _$Error implements Error {
  const _$Error();

  @override
  String toString() {
    return 'MoviesStateTwo.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult loaded(MovieList movieList),
    @required TResult empty(),
    @required TResult error(),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(empty != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult loaded(MovieList movieList),
    TResult empty(),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(Loading value),
    @required TResult loaded(Loaded value),
    @required TResult empty(Empty value),
    @required TResult error(Error value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(empty != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    TResult empty(Empty value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements MoviesStateTwo {
  const factory Error() = _$Error;
}
