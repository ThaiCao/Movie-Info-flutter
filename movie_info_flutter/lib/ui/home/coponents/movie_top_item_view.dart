import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_info_flutter/models/movie.dart';
import 'package:movie_info_flutter/resouces/network/api_provider.dart';
import 'package:movie_info_flutter/shared/utils/constrants.dart';
import 'package:movie_info_flutter/shared/utils/screen_utils.dart';
import 'package:palette_generator/palette_generator.dart';

class MovieTopItemView extends StatelessWidget{

  final Movie movie;
  final String title;
  final String subTitle;
  // final PaletteColor coverColor;

  MovieTopItemView(this.movie, this.title, this.subTitle);
  // MovieTopItemView(this.movies, this.title, this.subTitle, this.coverColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          new Container(
            child: Stack(
              children: [
                Container(
                  width: ScreenUtils.width,
                  height: 170,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(ApiProvider.imageURLW500+ movie.posterPath!),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(margin5)),
                  ),
                ),
                Opacity(
                  opacity: 0.4,
                  child: Container(
                    width: ScreenUtils.width,
                    height: 170,
                    decoration: BoxDecoration(
                      // color: Colors.black,
                        color: Color(0xff3e454d),
                      borderRadius: BorderRadius.all(Radius.circular(margin5)),
                    ),
                  ),
                ),
                // Container(
                //   padding: EdgeInsets.all(margin2),
                //   decoration: BoxDecoration(
                //     // color: this.coverColor == null ? Color(0xff3E454D) : this.coverColor.color,
                //     color: Color(0xff3E454D) ,
                //     borderRadius: BorderRadius.only(bottomLeft: Radius.circular(margin5), bottomRight: Radius.circular(margin5)),
                //   ),
                //   child: ListView.builder(
                //     scrollDirection: Axis.horizontal,
                //     itemCount: movie.genreIds!.length,
                //     itemBuilder: (BuildContext context, int index){
                //       return buildRank(context, index);
                //     },
                //   ),
                // )
                Positioned(
                  bottom: 0,
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Container(
                    padding: EdgeInsets.all(margin5),
                    decoration: BoxDecoration(
                      color: Color(0xff3E454D) ,
                      // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(margin5), bottomRight: Radius.circular(margin10)),
                      borderRadius: BorderRadius.all(Radius.circular(margin5)),
                    ),
                    child: Text('${movie.title}'),
                  ),
                ),

              ],
            ),
          ),
          // new Expanded(
          //     child: new Container(
          //       padding: EdgeInsets.all(margin2),
          //       decoration: BoxDecoration(
          //         // color: this.coverColor == null ? Color(0xff3E454D) : this.coverColor.color,
          //         color: Color(0xff3E454D) ,
          //         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(margin5), bottomRight: Radius.circular(margin5)),
          //       ),
          //       child: ListView.builder(
          //         scrollDirection: Axis.horizontal,
          //         itemCount: movie.genreIds!.length,
          //         itemBuilder: (BuildContext context, int index){
          //           return buildRank(context, index);
          //         },
          //       ),
          //     )
          // )
        ],
      ),
    );
  }

  Widget buildRank(BuildContext context, int index) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, margin5, 0, margin5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
                // width: 20,
                color: Colors.purple,
                padding: EdgeInsets.fromLTRB(margin5, margin5, margin5, margin5),
                margin: EdgeInsets.symmetric(horizontal: margin5),
                child: Text('${index +1}. ${movie.genreIds![index]}',
                style: TextStyle(color: white, fontSize: 12),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
