import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_info_flutter/models/response/movie_response.dart';
import 'package:movie_info_flutter/shared/utils/constrants.dart';
import 'package:movie_info_flutter/shared/utils/enumUtils.dart';
import 'package:movie_info_flutter/ui/home/coponents/home_movie_cover_view.dart';
import 'package:movie_info_flutter/ui/home/coponents/home_section_view.dart';

class MovieThreeGridView extends StatelessWidget{

  final MovieResponse? movieResponse;
  final String title;
  final String action;
  final MovieGridType type;

  MovieThreeGridView(this.movieResponse, this.title, this.action, this.type);

  @override
  Widget build(BuildContext context) {
    var children ;
    // var children = movieResponse?.movies?.map((movie) => Text('${movie.title}')).toList();
     switch(type) {
       case MovieGridType.cover:
         children = movieResponse?.movies?.map((movie) => HomeMovieCoverView(movie)).toList();
         break;
       case MovieGridType.coming:
         children = movieResponse?.movies?.map((movie) => HomeMovieCoverView(movie)).toList();
         break;
       default:
         break;
     }
     return Container(
       margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
            HomeSectionView(title, action),
           Container(
             // color: Colors.white70,
             // color: Colors.white30.withOpacity(0.61),
             padding: EdgeInsets.fromLTRB(0, margin5, 0, 0),
             child: Wrap(spacing: 10, runSpacing: 10 , children: children ?? [],),

           ),
           Container(
             height: margin2,
             // color: Color(0xFFC60909),
             color: Colors.purpleAccent,
           )
         ],
       ),
     );
  }
}
