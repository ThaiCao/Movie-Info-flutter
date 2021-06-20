import 'package:movie_info_flutter/models/response/movie_response.dart';
import 'package:movie_info_flutter/resouces/network/api_provider.dart';

class NetworkRepository{
  final apiProvider = ApiProvider();

  Future<MovieResponse> fetchMoviesByType(String type)=> apiProvider.fetchMovies(type);
}
