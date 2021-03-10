// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RestClient implements RestClient {
  _RestClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://api.themoviedb.org/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<BaseResponse<List<MovieDTO>>> trendingMovies() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '/3/trending/movie/week',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = BaseResponse<List<MovieDTO>>.fromJson(
        _result.data,
        (json) => (json as List<dynamic>)
            .map<MovieDTO>((i) => MovieDTO.fromJson(i as Map<String, dynamic>))
            .toList());
    return value;
  }

  @override
  Future<BaseResponse<List<MovieDTO>>> similarMovies(id) async {
    ArgumentError.checkNotNull(id, 'id');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '/3/movie/$id/similar',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = BaseResponse<List<MovieDTO>>.fromJson(
        _result.data,
        (json) => (json as List<dynamic>)
            .map<MovieDTO>((i) => MovieDTO.fromJson(i as Map<String, dynamic>))
            .toList());
    return value;
  }

  @override
  Future<BaseResponse<Movie>> details(id) async {
    ArgumentError.checkNotNull(id, 'id');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/3/movie/$id',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = BaseResponse<Movie>.fromJson(
      _result.data,
      (json) => Movie.fromJson(json),
    );
    return value;
  }
}
