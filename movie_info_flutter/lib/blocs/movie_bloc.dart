import 'package:movie_info_flutter/models/response/movie_response.dart';
import 'package:movie_info_flutter/resouces/network/networkRepository.dart';
import 'package:movie_info_flutter/shared/utils/enumUtils.dart';
import 'package:rxdart/rxdart.dart';

class MovieBloc{
  final networkRepository = NetworkRepository();
  final movieFetch1 = PublishSubject<MovieResponse>();
  final movieFetch2 = PublishSubject<MovieResponse>();
  final movieFetch3 = PublishSubject<MovieResponse>();
  final movieFetch4 = PublishSubject<MovieResponse>();

  Stream<MovieResponse> get popularMovies => movieFetch1.stream;
  Stream<MovieResponse> get upcomingMovies => movieFetch2.stream;
  Stream<MovieResponse> get topRatedMovies => movieFetch3.stream;
  Stream<MovieResponse> get latestMovies => movieFetch4.stream;

  fetchPopuplarMovie() async{
    MovieType type = MovieType.popular;
    MovieResponse movieResponse = await networkRepository.fetchMoviesByType(type.value);
    if (!movieFetch1.isClosed)
      movieFetch1.sink.add(movieResponse);
  }

  fetchUpcomingMovie() async{
    MovieType type = MovieType.upcoming;
    MovieResponse movieResponse = await networkRepository.fetchMoviesByType(type.value);
    if (!movieFetch2.isClosed)
      movieFetch2.sink.add(movieResponse);
  }

  fetchTopRateMovie() async{
    MovieType type = MovieType.topRated;
    MovieResponse movieResponse = await networkRepository.fetchMoviesByType(type.value);
    if (!movieFetch3.isClosed)
      movieFetch3.sink.add(movieResponse);
  }

  // fetchLatestMovie() async{
  //   MovieType type = MovieType.latest;
  //   MovieResponse movieResponse = await networkRepository.fetchMoviesByType(type.value);
  //   movieFetch4.sink.add(movieResponse);
  // }

  dispose(){
    movieFetch1.close();
    movieFetch2.close();
    movieFetch3.close();
    movieFetch4.close();
  }
}
