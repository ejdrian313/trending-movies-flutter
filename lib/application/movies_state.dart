import 'package:cubit_vs_bloc/domain/movie_list.dart';
import 'package:cubit_vs_bloc/infrastructure/repositories/movie_repository_impl.dart';
import 'package:equatable/equatable.dart';

abstract class MoviesEvent extends Equatable {}

class LoadingMoviesByOption extends MoviesEvent {
  @override
  List<Object> get props => [];
}

class LoadingMoviesByEither extends MoviesEvent {
  @override
  List<Object> get props => [];
}

class FindSimilarEvent extends MoviesEvent {
  final Movie movie;

  FindSimilarEvent(this.movie);

  @override
  List<Object> get props => [movie];
}

abstract class MoviesState extends Equatable {}

class LoadingMovies extends MoviesState {
  @override
  List<Object> get props => [];

  @override
  bool get stringify => false;
}

class LoadedError extends MoviesState {
  @override
  List<Object> get props => [];

  @override
  bool get stringify => false;
}

class EmptyListOfMovies extends MoviesState {
  @override
  List<Object> get props => [];
}

class LoadedMovies extends MoviesState {
  final MovieList movies;

  LoadedMovies(this.movies);

  @override
  List<Object> get props => [movies];
}

class LoadedErrorTyped extends MoviesState {
  LoadedErrorTyped(MyFailure error);

  @override
  List<Object> get props => [];
}
