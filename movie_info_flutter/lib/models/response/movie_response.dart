import 'package:movie_info_flutter/models/movie.dart';

class MovieResponse{
  final int? page;
  final int? totalResults;
  final int? totalPages;
  final List<Movie>? movies ;

  MovieResponse({
    this.page,
    this.totalPages,
    this.totalResults,
    this.movies
});

  factory MovieResponse.fromJson(Map<String, dynamic> movieResponse){
    return MovieResponse(
      page: movieResponse['page'],
      totalPages: movieResponse['total_pages'],
      totalResults: movieResponse['total_results'],
      movies: movieResponse['results']
    );
  }
}
