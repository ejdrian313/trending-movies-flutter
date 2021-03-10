import 'package:cubit_vs_bloc/application/movies_bloc.dart';
import 'package:cubit_vs_bloc/application/movies_state.dart';
import 'package:cubit_vs_bloc/domain/movie_list.dart';
import 'package:cubit_vs_bloc/presentation/widgets/app_bar_blur.dart';
import 'package:cubit_vs_bloc/presentation/widgets/error_safe_area.dart';
import 'package:cubit_vs_bloc/presentation/widgets/loading_safe_area.dart';
import 'package:cubit_vs_bloc/presentation/widgets/movies/empty_list_info_safe_area.dart';
import 'package:cubit_vs_bloc/presentation/widgets/movies/movies_grid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../injection.dart';

class SimilarMoviesPage extends StatefulWidget {
  final Movie movie;

  const SimilarMoviesPage({Key key, this.movie}) : super(key: key);

  @override
  _SimilarMoviesPageState createState() => _SimilarMoviesPageState();
}

class _SimilarMoviesPageState extends State<SimilarMoviesPage> {
  MovieBloc _movieBloc;

  @override
  void initState() {
    _movieBloc = getIt<MovieBloc>();
    _movieBloc.add(FindSimilarEvent(widget.movie));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBarBlur.build(
        'Similar movies to ${widget.movie.original_title}',
        popUntilBase: true,
        context: context,
      ),
      body: BlocBuilder<MovieBloc, MoviesState>(
        cubit: _movieBloc,
        builder: (context, state) {
          if (state is LoadedMovies) {
            return MoviesGrid(movies: state.movies);
          } else if (state is EmptyListOfMovies) {
            return EmptyListInfoSafeArea();
          } else if (state is LoadedError || state is LoadedErrorTyped) {
            return ErrorSafeArea();
          }
          return LoadingSafeArea();
        },
      ),
    );
  }
}
