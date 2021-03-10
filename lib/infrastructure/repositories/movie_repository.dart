import 'package:cubit_vs_bloc/domain/movie_list.dart';
import 'package:cubit_vs_bloc/infrastructure/repositories/movie_repository_impl.dart';
import 'package:dartz/dartz.dart';

abstract class MovieRepository {
  Future<Either<MovieList, MyFailure>> allEither();

  Future<Either<MovieList, MyFailure>> findSimilar(int movieId);

  Future<Option<MovieList>> allOption();
}
