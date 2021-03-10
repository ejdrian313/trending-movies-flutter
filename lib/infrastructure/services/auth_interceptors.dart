import 'package:cubit_vs_bloc/infrastructure/services/app_settings.dart';
import 'package:dio/dio.dart';

class AuthInterceptors extends InterceptorsWrapper {
  @override
  Future onRequest(RequestOptions options) {
    addApiKey(options);
    return super.onRequest(options);
  }

  @override
  Future onResponse(Response response) {
    return super.onResponse(response);
  }

  @override
  Future onError(DioError err) {
    return super.onError(err);
  }

  void addApiKey(RequestOptions options) {
    options?.path = options.path + '?api_key=$MOVIE_DB_API_KEY';
  }
}
