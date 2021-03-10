import 'dart:io';
import 'package:cubit_vs_bloc/domain/movie_list.dart';
import 'package:cubit_vs_bloc/infrastructure/repositories/movie_repository_impl.dart';
import 'package:cubit_vs_bloc/infrastructure/data_sources/rest_client.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class RestClientMock extends Mock implements RestClient {}

void main() {
  MovieRepositoryImpl movieRepository;
  RestClientMock restClient;
  var list = <Movie>[];
  list.add(Movie(2, 'pl', 'tak', 'urlImage'));
  var movies = MovieList(1, 3, list);

  setUp(() {
    restClient = RestClientMock();
    movieRepository = MovieRepositoryImpl(restClient);
  });

  group('api tests', () {
    test(
      'get movies by option success',
      () async {
        // arrange
        var foo = 10;
        when(restClient.trendingMovies()).thenAnswer((_) async => movies);

        //act
        var result = await movieRepository.allOption();
        var movieList = result.getOrElse(() => null);
        expect(foo, 10);
        // assert
        expect(true, result.isSome());
        expect(movieList, isA<MovieList>());
      },
    );

    test(
      'get movies by option throw SocketException("Failed")',
          () async {
        // arrange
        when(restClient.trendingMovies()).thenThrow(SocketException("Failed"));

        //act
        var result = await movieRepository.allOption();
        var movieList = result.getOrElse(() => null);

        // assert
        expect(false, result.isSome());
        expect(movieList, null);
      },
    );

    test(
      'get movies by option success',
          () async {
        // arrange
        when(restClient.trendingMovies()).thenAnswer((_) async => movies);

        //act
        var result = await movieRepository.allEither();
        var movieList = result.fold((l) => l, (r) => r);

        // assert
        expect(true, result.isLeft());
        expect(movieList, isA<MovieList>());
      },
    );

    test(
      'get movies new SocketException("Failed")',
          () async {
        // arrange
        when(restClient.trendingMovies()).thenThrow(new SocketException("Failed"));

        // act
        var result = await movieRepository.allEither();
        var failure = result.fold((l) => null, (failure) => failure);

        // assert
        expect(failure, isA<MyFailure>());
      },
    );

    test(
      'get movies throw FormatException',
          () async {
        // arrange
        when(restClient.trendingMovies()).thenThrow(FormatException("Failed"));

        // act
        var result = await movieRepository.allEither();
        var failure = result.fold((l) => null, (failure) => failure);

        // assert
        expect(failure, isA<MyFailure>());
      },
    );

    test(
      'get movies throw HttpException',
          () async {
        // arrange
        when(restClient.trendingMovies()).thenThrow(HttpException("Failed"));

        // act
        var result = await movieRepository.allEither();
        var failure = result.fold((l) => null, (failure) => failure);

        // assert
        expect(failure, isA<MyFailure>());
      },
    );

    test(
      'get movies throw Exception',
          () async {
        // arrange
        when(restClient.trendingMovies()).thenThrow(Exception("Failed"));

        // act
        var result = await movieRepository.allEither();
        var failure = result.fold((l) => null, (failure) => failure);

        // assert
        expect(failure, isA<MyFailure>());
      },
    );
  });
}
