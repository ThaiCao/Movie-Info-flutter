import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_info_flutter/models/response/movie_response.dart';
import 'package:movie_info_flutter/resouces/network/api_provider.dart';
import 'package:movie_info_flutter/shared/utils/constrants.dart';
import 'package:movie_info_flutter/shared/utils/screen_utils.dart';
import 'package:movie_info_flutter/ui/home/coponents/movie_top_banner_view.dart';
import 'package:palette_generator/palette_generator.dart';

class LatestWidget extends StatelessWidget{

  final MovieResponse? movieResponse;
  LatestWidget(this.movieResponse);
  // late PaletteGenerator paletteGenerator1;
  // LatestWidget(this.movieResponse){
  //   paletteGenerator1 = PaletteGenerator.fromImageProvider(
  //       CachedNetworkImageProvider(ApiProvider.imageURLW500+movieResponse!.movies![0].posterPath!)) as PaletteGenerator;
  // }

  @override
  Widget build(BuildContext context) {
    if(movieResponse== null || movieResponse!.movies == null  || movieResponse!.movies!.length ==0){
      return Container(
        padding: EdgeInsets.symmetric(horizontal: margin5),
        decoration: BoxDecoration(
          color: Color(0xff3E454D),
          borderRadius: BorderRadius.all(Radius.circular(margin5))
        ),
        width: ScreenUtils.width,
        // height: ScreenUtils.height,
        height: ScreenUtils.width*9/15,
      );
    }
    return MovieTopBannerView(movieResponse, "latest title", "latest subTitle", "latest action");
  }
}
