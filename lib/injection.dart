import 'package:cubit_vs_bloc/application/movies_bloc.dart';
import 'package:cubit_vs_bloc/application/movies_state.dart';
import 'package:cubit_vs_bloc/infrastructure/repositories/movie_repository_impl.dart';
import 'package:cubit_vs_bloc/infrastructure/data_sources/rest_client.dart';
import 'package:cubit_vs_bloc/infrastructure/repositories/movie_repository.dart';
import 'package:cubit_vs_bloc/infrastructure/services/auth_interceptors.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final GetIt getIt = GetIt.instance;

Future<void> initDI() async {
  services();
  repositories();
  blocs();
}

void repositories() {
  getIt.registerSingleton<MovieRepository>(MovieRepositoryImpl(getIt()));
}

void services() {
  getIt.registerSingleton<Dio>(provideDio());
  getIt.registerSingleton(RestClient(getIt()));
}

void blocs() {
  getIt.registerFactory<MovieBloc>(
    () => MovieBloc(LoadingMovies(), getIt()),
  );
}

Dio provideDio() {
  var dio = Dio();
  dio.interceptors.add(AuthInterceptors());
  dio.interceptors.add(PrettyDioLogger(
    responseHeader: false,
    responseBody: false,
    requestHeader: false,
    requestBody: false,
    maxWidth: 140,
  ));
  return dio;
}
