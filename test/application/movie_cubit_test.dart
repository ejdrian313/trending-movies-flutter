import 'package:bloc_test/bloc_test.dart';
import 'package:cubit_vs_bloc/application/movies_cubit.dart';
import 'package:cubit_vs_bloc/application/movies_state.dart';
import 'package:cubit_vs_bloc/infrastructure/repositories/movie_repository_impl.dart';
import 'package:cubit_vs_bloc/infrastructure/repositories/movie_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockRepository extends Mock implements MovieRepository {}
class MockMovieCubit extends MockBloc<MoviesState> implements MovieCubit {}

void main() {
  MovieCubit cubit;
  MockRepository mockRepository;

  setUp(() {
    mockRepository = MockRepository();
    cubit = MovieCubit(repository: mockRepository);
  });

  group('tests cubit movies', () {
    blocTest(
      'emits [LoadingMovies, LoadedErrorTyped] when repository return a MyFailure (right value) from Either MyFailure',
      build: () {
        when(mockRepository.allEither())
            .thenAnswer((_) async => right(MyFailure()));
        return cubit;
      },
      act: (MovieCubit cubit) => cubit.getMoviesEither(),
      expect: [
        LoadingMovies(),
        LoadedErrorTyped(MyFailure()),
      ],
    );

    blocTest(
      'emits [LoadingMovies, LoadedErrorTyped] when repository return a MyFailure (right value) from Either MyFailure',
      build: () {
        when(mockRepository.allOption())
            .thenAnswer((_) async => none());
        return cubit;
      },
      act: (MovieCubit cubit) => cubit.getMoviesOption(),
      expect: [
        LoadingMovies(),
        LoadedError(),
      ],
    );
  });
}
