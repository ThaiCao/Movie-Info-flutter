import 'package:flutter/material.dart';
import 'package:movie_info_flutter/shared/utils/constrants.dart';
import 'dart:ui' as ui;

class HomeScreen extends StatefulWidget{

  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => HomeScreenFulWidgetState();

}

class HomeScreenFulWidgetState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: new ui.ImageFilter.blur(
        sigmaX: 6.0,
        sigmaY: 6.0,
      ),
      child: Container(
        padding: EdgeInsets.all(margin10),
        decoration: BoxDecoration(
          // color: const Color(0xFFB4C56C).withOpacity(0.61),
          color: Colors.white30.withOpacity(0.61),
          borderRadius: BorderRadius.all(Radius.circular(margin8)),
        ),
        child: Text( "Home page"),
      ),
      // child: widgetOptions.elementAt(selectedIndex),
    );
  }

}
