import 'package:cubit_vs_bloc/domain/movie_list.dart';
import 'package:cubit_vs_bloc/infrastructure/dto/freezed_dto.dart';
import 'package:dio/dio.dart' hide Response;
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'https://api.themoviedb.org/')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/3/trending/movie/week')
  Future<BaseResponse<List<MovieDTO>>> trendingMovies();

  @GET('/3/movie/{id}/similar')
  Future<BaseResponse<List<MovieDTO>>> similarMovies(@Path() int id);

  @GET('/3/movie/{id}')
  Future<BaseResponse<Movie>> details(@Path() int id);
}
