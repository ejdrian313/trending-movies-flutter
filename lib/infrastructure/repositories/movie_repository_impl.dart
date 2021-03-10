import 'dart:developer' as developer;
import 'dart:io';

import 'package:cubit_vs_bloc/domain/movie_list.dart';
import 'package:cubit_vs_bloc/infrastructure/data_sources/rest_client.dart';
import 'package:cubit_vs_bloc/infrastructure/repositories/movie_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
class MovieRepositoryImpl implements MovieRepository {
  final RestClient _restClient;

  MovieRepositoryImpl(this._restClient);

  @override
  Future<Either<MovieList, MyFailure>> allEither() async {
    try {
      var response = await _restClient.trendingMovies();
      return left(MovieList.fromListMovieDTO(response.data));
    } on SocketException catch (_) {
      return right(MyFailure());
    } on HttpException catch (_) {
      return right(MyFailure());
    } on FormatException catch (_) {
      return right(MyFailure());
    } catch (e) {
      developer.log(e.toString());
      return right(MyFailure());
    }
  }

  @override
  Future<Option<MovieList>> allOption() async {
    try {
      var response = await _restClient.trendingMovies();
      return some(MovieList.fromListMovieDTO(response.data));
    } catch (e) {
      developer.log(e.toString());
      return none();
    }
  }

  @override
  Future<Either<MovieList, MyFailure>> findSimilar(int id) async {
    try {
      var response = await _restClient.similarMovies(id);
      return left(MovieList.fromListMovieDTO(response.data));
    } catch (e) {
      developer.log(e.toString());
      return right(MyFailure());
    }
  }
}

class MyFailure {}
