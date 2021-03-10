import 'package:cubit_vs_bloc/infrastructure/dto/freezed_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_list.freezed.dart';

part 'movie_list.g.dart';

@freezed
abstract class Movie with _$Movie {
  factory Movie(
      int id,
      String original_language,
      String original_title,
      String poster_path,
      String backdrop_path,
      String overview,
      double vote_average,
      double popularity,
      int vote_count) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}

extension MovieX on Movie {
  String get posterUrl {
    var path = poster_path;
    if (poster_path.startsWith('/')) {
      path = poster_path.replaceFirst('/', '');
    }
    return 'https://image.tmdb.org/t/p/w500/$path';
  }

  String get backdropUrl {
    var path = backdrop_path;
    if (backdrop_path.startsWith('/')) {
      path = backdrop_path.replaceFirst('/', '');
    }
    return 'https://image.tmdb.org/t/p/w500/$path';
  }
}

@freezed
abstract class MovieList with _$MovieList {
  const factory MovieList(List<Movie> results) = _MovieList;

  factory MovieList.fromJson(Map<String, dynamic> json) =>
      _$MovieListFromJson(json);

  factory MovieList.fromListMovieDTO(List<MovieDTO> list) {
    var movieList = <Movie>[];
    list.removeWhere(
      (element) => element.backdrop_path == null || element.poster_path == null,
    );
    list.forEach(
      (element) => movieList.add(
        element.toDomain(),
      ),
    );
    return MovieList(movieList);
  }
}

extension MovieDTOX on MovieDTO {
  Movie toDomain() {
    return Movie(
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
}

@freezed
abstract class MoviesEventTwo with _$MoviesEventTwo {
  const factory MoviesEventTwo.trendingEither() = TrendingEither;
  const factory MoviesEventTwo.similar(Movie movie) = Similar;
  const factory MoviesEventTwo.trendingOption() = TrendingOption;
}

@freezed
abstract class MoviesStateTwo with _$MoviesStateTwo {
  const factory MoviesStateTwo.loading() = Loading;
  const factory MoviesStateTwo.loaded(MovieList movieList) = Loaded;
  const factory MoviesStateTwo.empty() = Empty;
  const factory MoviesStateTwo.error() = Error;
}

@JsonSerializable(
    genericArgumentFactories: true,
    anyMap: true,
    fieldRename: FieldRename.snake,
    nullable: true)
class BaseResponse<T> {
  @JsonKey(name: 'total_pages')
  final int total_pages;
  @JsonKey(name: 'total_results')
  final int total_results;

  @JsonKey(name: 'results', nullable: false)
  final T data;

  BaseResponse(this.total_pages, this.total_results, this.data);

  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object json) fromJsonT,
  ) =>
      _$BaseResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$BaseResponseToJson(this, toJsonT);
}
