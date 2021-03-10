import 'package:cubit_vs_bloc/application/movies_bloc.dart';
import 'package:cubit_vs_bloc/application/movies_state.dart';
import 'package:cubit_vs_bloc/presentation/widgets/app_bar_blur.dart';
import 'package:cubit_vs_bloc/presentation/widgets/error_safe_area.dart';
import 'package:cubit_vs_bloc/presentation/widgets/loading_safe_area.dart';
import 'package:cubit_vs_bloc/presentation/widgets/movies/empty_list_info_safe_area.dart';
import 'package:cubit_vs_bloc/presentation/widgets/movies/movies_grid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../injection.dart';

class MoviesPage extends StatefulWidget {
  @override
  _MoviesPageState createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  final MovieBloc _movieBloc = getIt<MovieBloc>();

  @override
  void initState() {
    _movieBloc.add(LoadingMoviesByEither());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBarBlur.build('Trending Movies'),
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
