import 'dart:convert';

import 'package:http/http.dart';
import 'package:movie_info_flutter/models/response/movie_response.dart';

class  ApiProvider{
  Client client = Client();
  final apiKey = "e54d1df6bcc26b67ccadf98cea21c3f3";
  final baseURL = "http://api.themoviedb.org/3";
  final imageURLW185 = "https://image.tmdb.org/t/p/w185";
   static final imageURLW500 = "https://image.tmdb.org/t/p/w500";

  Future<MovieResponse> fetchMovies(String type) async{
    Response response;
    if(apiKey !=''){
      response = await client.get(Uri.parse('$baseURL/movie/${type}?api_key=$apiKey'));
    }else{
      throw Exception('Please add your API key');
    }
    if(response.statusCode == 200){
      return MovieResponse.fromJson(json.decode(response.body));
    }else{
      throw Exception('Fail to load movie');
    }
  }
}
