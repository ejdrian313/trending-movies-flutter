import 'package:cubit_vs_bloc/domain/movie_list.dart';
import 'package:cubit_vs_bloc/presentation/similar_movies_page.dart';
import 'package:flutter/material.dart' hide Router;

class MovieTile extends StatelessWidget {
  const MovieTile({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(20.0),
      child: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              height: 220,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                    child: Image.network(
                      movie.backdropUrl,
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    left: 95,
                    top: 190,
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 16,
                        ),
                        Text(
                          movie.vote_average.toStringAsFixed(1),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.people,
                          color: Colors.white,
                          size: 16,
                        ),
                        Text(
                          movie.popularity.toStringAsFixed(1),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 8,
                    top: 84,
                    child: SizedBox(
                      width: 80,
                      height: 160,
                      child: Image.network(movie.posterUrl),
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              title: Text(
                movie.original_title.toUpperCase(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.amberAccent,
                    letterSpacing: 1.5),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.language,
                    size: 16,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    movie.original_language.toUpperCase(),
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 11,
            ),
            InkWell(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
              ),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SimilarMoviesPage(movie: movie)),
                ),
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.search, size: 16), Text('Find similar')],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
