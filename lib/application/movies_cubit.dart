import 'package:cubit_vs_bloc/infrastructure/repositories/movie_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'movies_state.dart';

@injectable
class MovieCubit extends Cubit<MoviesState> {
  final MovieRepository repository;

  MovieCubit({this.repository}) : super(LoadingMovies());

  void getMoviesOption() async {
    emit(LoadingMovies());
    final movies = await repository.allOption();
    movies.fold(
        () => emit(LoadedError()), (movies) => emit(LoadedMovies(movies)));
  }

  void getMoviesEither() async {
    emit(LoadingMovies());
    final movies = await repository.allEither();
    movies.fold((movies) => emit(LoadedMovies(movies)),
        (error) => emit(LoadedErrorTyped(error)));
  }
}
