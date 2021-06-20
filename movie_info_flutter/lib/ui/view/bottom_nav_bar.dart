

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_info_flutter/shared/utils/constrants.dart';

class BottomNavBar extends StatelessWidget{

  const BottomNavBar({
    required Key key,
  }): super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      height: 55,
      width: double.infinity, // mean it cove the avaiable width
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(margin20),
          topRight: Radius.circular(margin20),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -7),
            blurRadius: 33,
            color: Color(0xFF6DAED9).withOpacity(0.11),
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              onPressed: (){},
              icon: SvgPicture.asset("assets/icons/home.svg"),
          ),
          IconButton(
            onPressed: (){},
            icon: SvgPicture.asset("assets/icons/Following.svg"),
          ),
          IconButton(
            onPressed: (){},
            icon: SvgPicture.asset("assets/icons/Glyph.svg"),
          ),
          IconButton(
            onPressed: (){},
            icon: SvgPicture.asset("assets/icons/home.svg"),
          ),
        ],
      ),
      
    );
  }
}
