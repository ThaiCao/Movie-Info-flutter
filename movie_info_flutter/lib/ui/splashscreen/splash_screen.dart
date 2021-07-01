import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movie_info_flutter/ui/mainapp/mainapp.dart';
import 'package:movie_info_flutter/ui/view/background.dart';

class SplashScreen extends StatefulWidget{

  @override
  State createState() => SplashScreenFulWidget();
}

class SplashScreenFulWidget extends State<SplashScreen>{

  @override
  void initState() {
    super.initState();

    loadData();
  }

  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 3), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MainAppWidget()));
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     decoration: BoxDecoration(
  //       image: DecorationImage(
  //           image: AssetImage('assets/icons/.menu.svg'),
  //           fit: BoxFit.cover
  //       ) ,
  //     ),
  //     child: Center(
  //       child: CircularProgressIndicator(
  //         valueColor: AlwaysStoppedAnimation<Color>(Colors.redAccent),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return new Container(
      decoration: new BoxDecoration(
        color: const Color(0xFF273A48),
      ),
      child: new Stack(
        children: <Widget>[
          new CustomPaint(
            size: new Size(_width, _height),
            painter: new Background(),
          ),
        ],
      ),
    );
  }
}
