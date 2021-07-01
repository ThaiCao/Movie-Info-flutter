import 'package:flutter/material.dart';
import 'package:movie_info_flutter/blocs/movie_bloc.dart';
import 'package:movie_info_flutter/models/response/movie_response.dart';
import 'package:movie_info_flutter/shared/utils/enumUtils.dart';
import 'package:movie_info_flutter/ui/home/coponents/latest_widget.dart';
import 'package:movie_info_flutter/ui/home/coponents/movie_three_grid_view.dart';
import 'package:multiple_stream_builder/multiple_stream_builder.dart';

class HomeStyle2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HomeStyle2FulWidget();
}

class HomeStyle2FulWidget extends State<HomeStyle2>{
  late MovieBloc movieBloc ;

  @override
  void initState() {
    super.initState();
    // movieBloc.fetchLatestMovie();
    movieBloc = MovieBloc();
    movieBloc.fetchPopuplarMovie();
    movieBloc.fetchTopRateMovie();
    movieBloc.fetchUpcomingMovie();
  }

  @override
  void dispose() {
    movieBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder3<MovieResponse,MovieResponse,MovieResponse>(
      streams: Tuple3(movieBloc.popularMovies, movieBloc.topRatedMovies, movieBloc.upcomingMovies),
      builder: (context, snapshots){
        if(snapshots.item1 !=null || snapshots.item2 !=null || snapshots.item3 !=null){
            return ListView(
              addAutomaticKeepAlives: true,
              cacheExtent:  10000,
              children: <Widget>[
                new LatestWidget(snapshots.item1.data),
                new MovieThreeGridView(snapshots.item3.data, 'coming soon', 'coming_soon', MovieGridType.coming),
              ],
            );
        }else{
          return Center(
            child: Text("No data"),
          );
        }

        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
