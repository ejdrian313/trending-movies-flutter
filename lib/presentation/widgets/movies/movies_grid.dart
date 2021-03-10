import 'package:cubit_vs_bloc/domain/movie_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'movie_tile.dart';

class MoviesGrid extends StatelessWidget {
  const MoviesGrid({
    Key key,
    @required this.movies,
  }) : super(key: key);

  final MovieList movies;

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return StaggeredGridView.countBuilder(
          crossAxisCount: 4,
          primary: true,
          itemCount: movies.results.length,
          itemBuilder: (BuildContext context, int index) {
            var movie = movies.results[index];
            return MovieTile(movie: movie);
          },
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          staggeredTileBuilder: (int index) =>
              orientation == Orientation.portrait
                  ? StaggeredTile.fit(2)
                  : StaggeredTile.fit(1),
        );
      },
    );
  }
}
