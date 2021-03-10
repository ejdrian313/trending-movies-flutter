import 'package:bloc_test/bloc_test.dart';
import 'package:cubit_vs_bloc/application/movies_bloc.dart';
import 'package:cubit_vs_bloc/application/movies_state.dart';
import 'package:cubit_vs_bloc/domain/movie_list.dart';
import 'package:cubit_vs_bloc/infrastructure/repositories/movie_repository_impl.dart';
import 'package:cubit_vs_bloc/infrastructure/repositories/movie_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockRepository extends Mock implements MovieRepository {}

void main() {
  MovieBloc bloc;
  MockRepository mockRepository;
  var list = <Movie>[];
  list.add(Movie(2, 'pl', 'tak', 'urlImage'));
  var movies = MovieList(1, 3, list);

  setUp(() {
    mockRepository = MockRepository();
    bloc = MovieBloc(LoadingMovies(), mockRepository);
  });

  group('tests loading movies', () {
    test(
      'loadedMovies with movies isNot LoadedMovies with null',() {
        expect(LoadedMovies(movies), isNot(LoadedMovies(null)));
      }
    );

    blocTest(
      'emits [LoadingMovies, LoadedMovies] when repository return a MyFailure (right value) from Either MyFailure',
      build: () {
        when(mockRepository.allEither())
            .thenAnswer((_) async => left(movies));
        return bloc;
      },
      act: (bloc) => bloc.add(LoadingMoviesByEither()),
      expect: [
        LoadingMovies(),
        LoadedMovies(movies),
      ],
    );

    blocTest(
      'emits [LoadingMovies, LoadedErrorTyped] when repository return a MyFailure (right value) from Either MyFailure',
      build: () {
        when(mockRepository.allEither())
            .thenAnswer((_) async => right(MyFailure()));
        return bloc;
      },
      act: (bloc) => bloc.add(LoadingMoviesByEither()),
      expect: [
        LoadingMovies(),
        LoadedErrorTyped(MyFailure()),
      ],
    );

    blocTest(
      'emits [LoadingMovies, LoadedError] when repository return a none  from Option',
      build: () {
        when(mockRepository.allOption()).thenAnswer((_) async => none());
        return bloc;
      },
      act: (bloc) => bloc.add(LoadingMoviesByOption()),
      expect: [
        LoadingMovies(),
        LoadedError(),
      ],
    );

    test(
      'should get messaged as either',
      () async {
        //arrange
        when(mockRepository.allEither())
            .thenAnswer((_) async => right(MyFailure()));

        //act
        bloc.add(LoadingMoviesByEither());
        //assert
        await expectLater(
            bloc,
            emitsInOrder(
                <MoviesState>[LoadingMovies(), LoadedErrorTyped(MyFailure())]));
      },
    );

    test(
      'should get messaged as option',
      () async {
        // arrange
        when(mockRepository.allOption()).thenAnswer((_) async => none());

        //act
        bloc.add(LoadingMoviesByOption());

        // assert
        await expectLater(
            bloc, emitsInOrder(<MoviesState>[LoadingMovies(), LoadedError()]));
      },
    );
  });
}
