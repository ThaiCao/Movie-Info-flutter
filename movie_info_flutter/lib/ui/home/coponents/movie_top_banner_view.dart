import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_info_flutter/models/movie.dart';
import 'package:movie_info_flutter/models/response/movie_response.dart';
import 'package:movie_info_flutter/shared/utils/constrants.dart';
import 'package:movie_info_flutter/shared/utils/screen_utils.dart';
import 'package:movie_info_flutter/ui/home/coponents/movie_top_item_view.dart';
import 'package:palette_generator/palette_generator.dart';

class MovieTopBannerView extends StatelessWidget{

  MovieResponse? movieResponse;
  String? title;
  String? subTitle;
  String? action;
  // PaletteColor? coverColor;

  // MovieTopBannerView(this.movieResponse, this.title, this.subTitle, this.action, this.coverColor);
  MovieTopBannerView(this.movieResponse, this.title, this.subTitle, this.action);

  @override
  Widget build(BuildContext context) {
    if(movieResponse ==null
        || movieResponse!.movies == null
        || movieResponse!.movies!.length ==0) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 0),
          decoration: BoxDecoration(
            color: Color(0xff3E454D),
            borderRadius: BorderRadius.all(Radius.circular(margin5)),
          ),
          width: ScreenUtils.width,
          // height: ScreenUtils.height,
          height: ScreenUtils.width*9/15,
        );
    }
    return Container(
      // color: Colors.white,
      //https://pub.dev/packages/carousel_slider
      child: CarouselSlider(
        options: CarouselOptions(height: 210.0),
        items: movieResponse!.movies!.map((movie) {
          return Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                  onTap: () {},
                child: Container(
                  width: ScreenUtils.width,
                  margin: EdgeInsets.symmetric(horizontal: margin5),
                  child: new MovieTopItemView(movie, title!, subTitle!),
                ),
              );
            },
          );
        }).toList(),
      )
    );
  }
}

// class MovieTopBanner{
//   List<Movie>? movies;
//   String? title;
//   String? subTitle;
//   String? action;
//   PaletteColor? coverColor;
//
//   MovieTopBanner(this.movies, this.title, this.subTitle, this.action, this.coverColor);
// }
