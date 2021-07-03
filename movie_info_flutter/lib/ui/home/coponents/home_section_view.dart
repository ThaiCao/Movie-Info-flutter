import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_info_flutter/shared/utils/constrants.dart';

class HomeSectionView extends StatelessWidget{

  final String title;
  final String action;

  HomeSectionView(this.title, this.action);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white70,
      // color: Colors.white30.withOpacity(0.61),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.purple, Colors.purpleAccent],
              begin: Alignment.bottomRight,
              end: Alignment.centerLeft)),
      padding: EdgeInsets.fromLTRB(margin10, margin10, margin10, margin5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '$title',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.yellowAccent),
              ),
              SizedBox(height: margin5,),
              Container(
                width: 80,
                height: margin2,
                color: Colors.yellowAccent,
              )
            ],
          ),
          GestureDetector(
            onTap: (){},
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('All', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.yellowAccent), ),
                SizedBox(height: 3,),
                Icon(CupertinoIcons.forward, size: 14, color: Colors.yellowAccent,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
