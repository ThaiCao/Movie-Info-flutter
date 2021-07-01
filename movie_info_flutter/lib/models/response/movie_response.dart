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
    List<Movie> temp =[];
    for(int i=0; i< movieResponse['results'].length; i++){
      Movie result = Movie.dataFromResponse(movieResponse['results'][i]);
      temp.add(result);
    }
    return MovieResponse(
      page: movieResponse['page'],
      totalPages: movieResponse['total_pages'],
      totalResults: movieResponse['total_results'],
      movies: temp,
      // movies: movieResponse['results']
    );
  }
}
