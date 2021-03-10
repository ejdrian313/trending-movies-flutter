import 'package:cubit_vs_bloc/domain/movie_list.dart';
import 'package:cubit_vs_bloc/infrastructure/repositories/movie_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'movies_state.dart';

class MovieBloc extends Bloc<MoviesEvent, MoviesState> {
  final MovieRepository _movieRepository;

  MovieBloc(MoviesState initialState, this._movieRepository)
      : super(initialState);

  @override
  Stream<MoviesState> mapEventToState(MoviesEvent event) async* {
    if (event is LoadingMoviesByOption) {
      yield LoadingMovies();
      var option = await _movieRepository.allOption();
      yield option.fold(() => LoadedError(), (movies) => LoadedMovies(movies));
    } else if (event is LoadingMoviesByEither) {
      yield LoadingMovies();
      var either = await _movieRepository.allEither();
      yield either.fold(
          (movies) => LoadedMovies(movies), (error) => LoadedErrorTyped(error));
    } else if (event is FindSimilarEvent) {
      yield LoadingMovies();
      var findSimilar = await _movieRepository.findSimilar(event.movie.id);
      yield findSimilar.fold(
          (movies) => movies.results.isEmpty
              ? EmptyListOfMovies()
              : LoadedMovies(movies),
          (error) => LoadedErrorTyped(error));
    }
  }
}

class MovieBlocTwo extends Bloc<MoviesEventTwo, MoviesStateTwo> {
  final MovieRepository _movieRepository;

  MovieBlocTwo(MoviesStateTwo initialState, this._movieRepository)
      : super(initialState);

  @override
  Stream<MoviesStateTwo> mapEventToState(MoviesEventTwo event) async* {
    yield* event.map(
      trendingEither: (_) async* {
        yield MoviesStateTwo.loading();
        var option = await _movieRepository.allEither();
        yield option.fold(
          (movies) => MoviesStateTwo.loaded(movies),
          (e) => MoviesStateTwo.error(),
        );
      },
      similar: (event) async* {
        yield MoviesStateTwo.loading();
        var findSimilar = await _movieRepository.findSimilar(event.movie.id);
        yield findSimilar.fold(
          (movies) => movies.results.isEmpty
              ? MoviesStateTwo.empty()
              : MoviesStateTwo.loaded(movies),
          (error) => MoviesStateTwo.error(),
        );
      },
      trendingOption: (_) async* {
        yield MoviesStateTwo.loading();
        var option = await _movieRepository.allOption();
        yield option.fold(() => MoviesStateTwo.error(),
            (movies) => MoviesStateTwo.loaded(movies));
      },
    );
  }
}
