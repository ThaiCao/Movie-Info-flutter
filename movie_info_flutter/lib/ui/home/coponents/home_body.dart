import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_info_flutter/shared/utils/constrants.dart';
import 'package:movie_info_flutter/ui/home/coponents/popular_widget.dart';
import 'package:movie_info_flutter/ui/home/coponents/top_rated_widget.dart';
import 'package:movie_info_flutter/ui/home/coponents/upcoming_widget.dart';

class HomeBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
       length: 3,
       child: Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.white,
           toolbarHeight: 80,
           shadowColor: Colors.black26,
           flexibleSpace: Column(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               TabBar(
                 tabs: [
                   Tab(
                     icon: Icon(Icons.ac_unit_rounded),
                     text: "Top Rated",
                   ),
                   Tab(
                     icon: Icon(Icons.access_alarm_rounded),
                     text: "Popular",
                   ),
                   Tab(
                     icon: Icon(Icons.account_circle_rounded),
                     text: "Upcoming",
                   )
                 ],
                 labelColor: Colors.black87,
                 indicatorColor: Colors.red,
               )
             ],
           ),
         ),
         body: TabBarView(
           children: <Widget>[
              TopRatedWiget(),
             PopularWidget(),
             UpcomingWidget()
           ],
         ),
       )
   );
  }

}
