import 'package:cubit_vs_bloc/domain/movie_list.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_dto.freezed.dart';

part 'freezed_dto.g.dart';

@freezed
abstract class MovieDTO with _$MovieDTO {
  const factory MovieDTO(int id,
      {String original_language,
      String original_title,
      String poster_path,
      String backdrop_path,
      String overview,
      double vote_average,
      double popularity,
      int vote_count}) = _MovieDTO;

  factory MovieDTO.fromJson(Map<String, dynamic> json) =>
      _$MovieDTOFromJson(json);

}

