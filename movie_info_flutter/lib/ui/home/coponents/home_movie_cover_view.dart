import 'package:flutter/material.dart';
import 'package:movie_info_flutter/models/movie.dart';
import 'package:movie_info_flutter/resouces/network/api_provider.dart';
import 'package:movie_info_flutter/shared/utils/constrants.dart';
import 'package:movie_info_flutter/shared/utils/screen_utils.dart';
import 'package:movie_info_flutter/ui/view/movie_cover_image.dart';

class HomeMovieCoverView extends StatelessWidget{

  final Movie movie;

  HomeMovieCoverView(this.movie);

  @override
  Widget build(BuildContext context) {
    var width = (ScreenUtils.width - 15*4)/3;
    return GestureDetector(
        onTap: (){},
        child: Container(
          // padding: EdgeInsets.fromLTRB(margin10, 0, margin10, 0),
          color: Colors.yellowAccent.withOpacity(0.61),
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              MovieCoverImage(ApiProvider.imageURLW500 + movie.posterPath!, width, (width / 0.75)),
              SizedBox(height: margin5,),
              Container(
                padding: EdgeInsets.fromLTRB(margin5, 0, margin5, 0),
                child: Text(
                  movie.title!,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                ),
              ),
              SizedBox(height: margin2,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: margin5,),
                  Text(movie.voteAverage.toString(), style: TextStyle(color: Colors.lightBlue, fontSize: 12),)
                ],
              )
            ],
          ),
        ),
    );
  }
}
