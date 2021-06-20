import 'package:movie_info_flutter/models/response/movie_response.dart';
import 'package:movie_info_flutter/resouces/network/networkRepository.dart';
import 'package:movie_info_flutter/shared/utils/enumUtils.dart';
import 'package:rxdart/rxdart.dart';

class MovieBloc{
  final networkRepository = NetworkRepository();
  final movieFetch = PublishSubject<MovieResponse>();

  fetchPopuplarMovie() async{
    MovieType type = MovieType.popular;
    MovieResponse movieResponse = await networkRepository.fetchMoviesByType(type.value);
    movieFetch.sink.add(movieResponse);
  }

  fetchUpcomingMovie() async{
    MovieType type = MovieType.upcoming;
    MovieResponse movieResponse = await networkRepository.fetchMoviesByType(type.value);
    movieFetch.sink.add(movieResponse);
  }

  fetchTopRateMovie() async{
    MovieType type = MovieType.topRated;
    MovieResponse movieResponse = await networkRepository.fetchMoviesByType(type.value);
    movieFetch.sink.add(movieResponse);
  }


  dispose(){
    movieFetch.close();
  }
}

final movieBloc = MovieBloc();
