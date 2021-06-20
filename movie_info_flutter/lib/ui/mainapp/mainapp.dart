import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_info_flutter/shared/utils/constrants.dart';
import 'package:movie_info_flutter/ui/favorite/favorite_screen.dart';
import 'package:movie_info_flutter/ui/home/home_screen.dart';
import 'package:movie_info_flutter/ui/more/more_screen.dart';
import 'package:movie_info_flutter/ui/recent/recent_screen.dart';
import 'dart:ui' as ui;

class MainAppWidget extends StatefulWidget{

  MainAppWidget({Key? key}) : super(key: key);

  @override
  State<MainAppWidget> createState() => MainAppWidgetFulWidgetState();

}

class MainAppWidgetFulWidgetState extends State<MainAppWidget>{

  int selectedIndex  =0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> widgetOptions = <Widget>[
    HomeScreen(key: Key("home_tab")),
    RecentScreen(),
    FavoriteScreen(),
    MoreScreen(),
  ];

  final Shader linearGradient = LinearGradient(
    colors: <Color>[Colors.deepOrangeAccent, Colors.purple],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 100.0, 70.0));


  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     backgroundColor: Colors.white,
  //     appBar: buildAppbar(),
  //     body: Container(
  //       child: widgetOptions.elementAt(selectedIndex),
  //     ),
  //     // bottomNavigationBar: BottomNavBar(key: Key("navBarView"),),
  //     bottomNavigationBar: BottomNavigationBar(
  //       items: <BottomNavigationBarItem>[
  //         BottomNavigationBarItem(
  //           icon: SvgPicture.asset("assets/icons/home.svg"),
  //           label: 'Home',
  //           backgroundColor: Colors.purple,
  //         ),
  //         BottomNavigationBarItem(
  //           icon: SvgPicture.asset("assets/icons/Glyph.svg"),
  //           label: 'Recent',
  //           backgroundColor: Colors.purple,
  //         ),
  //         BottomNavigationBarItem(
  //           icon: SvgPicture.asset("assets/icons/Following.svg"),
  //           label: 'Favorite',
  //           backgroundColor: Colors.purple,
  //         ),
  //         BottomNavigationBarItem(
  //           icon: SvgPicture.asset("assets/icons/more.svg"),
  //           label: 'More',
  //           backgroundColor: Colors.purple,
  //         ),
  //       ],
  //       currentIndex: selectedIndex,
  //       selectedItemColor: Colors.white70,
  //       onTap: onItemSelected,
  //     ),
  //   );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: buildAppbar(),
        body: Stack(
          children: <Widget>[
            Container(
              color: Colors.white10.withOpacity(0.8),
            ),
            ClipPath(
              clipper: ArcClipperBottom(),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.deepOrangeAccent, Colors.purple],
                        begin: Alignment.bottomRight,
                        end: Alignment.centerLeft)),
              ),
            ),
            ClipPath(
              clipper: ArcClipperTop(),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.purple, Colors.deepOrangeAccent],
                        begin: Alignment.topCenter,
                        end: Alignment.centerLeft)),
              ),
            ),
            Container(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                margin: EdgeInsets.all(margin10),
                decoration: BoxDecoration(
                  // color: const Color(0xFFB4C56C).withOpacity(0.01),
                  color: const Color(0xFF395001).withOpacity(0.41),
                  borderRadius: BorderRadius.all(Radius.circular(margin8)),
                ),
                child: widgetOptions.elementAt(selectedIndex),
                // child: BackdropFilter(
                //   filter: new ui.ImageFilter.blur(
                //     sigmaX: 6.0,
                //     sigmaY: 6.0,
                //   ),
                //   child: Container(
                //     margin: EdgeInsets.all(margin10),
                //     decoration: BoxDecoration(
                //       color: const Color(0xFFB4C56C).withOpacity(0.61),
                //       borderRadius: BorderRadius.all(Radius.circular(margin8)),
                //     ),
                //     child: widgetOptions.elementAt(selectedIndex),
                //   ),
                //   // child: widgetOptions.elementAt(selectedIndex),
                // ),
                // child: widgetOptions.elementAt(selectedIndex),
              ),
            ),

          ],
        ),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/home.svg"),
                label: 'Home',
                backgroundColor: Colors.purple,
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/Glyph.svg"),
                label: 'Recent',
                backgroundColor: Colors.purple,
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/Following.svg"),
                label: 'Favorite',
                backgroundColor: Colors.purple,
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/more.svg"),
                label: 'More',
                backgroundColor: Colors.purple,
              ),
            ],
            currentIndex: selectedIndex,
            selectedItemColor: Colors.white70,
            onTap: onItemSelected,
          ),
    );
  }

  void onItemSelected(int index){
    setState((){
      selectedIndex = index;
    });
  }


  AppBar buildAppbar(){
    return AppBar(
      backgroundColor: Colors.purple,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: margin20),
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: (){},
      ),
      actions: <Widget>[
        IconButton(
          padding: EdgeInsets.symmetric(horizontal: margin20),
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: (){},
          color: Colors.white,
        )
      ],
      title: Text("Movie info Flutter"),
      // titleTextStyle: TextStyle(color: Colors.red),
      // toolbarTextStyle: TextStyle(color: Colors.amberAccent),
    );
  }
}

class ArcClipperBottom extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var width = size.width;
    var height = size.height;
    var path = Path();
    path.moveTo(0.0, height);
    path.lineTo(0, height);
    path.lineTo(width, height);

    var p1 = new Offset(width / 4, height);
    var p2 = new Offset(0 * width / 4, 3.5 * height / 4);
    path.quadraticBezierTo(p1.dx, p1.dy, p2.dx, p2.dy);

    var p3 = new Offset(2 * width / 4, 3.5 * height / 4);
    var p4 = new Offset(0 * width / 4, 3.5 * height / 4);
    path.quadraticBezierTo(p3.dx, p3.dy, p4.dx, p4.dy);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class ArcClipperTop extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var width = size.width;
    var height = size.height;
    var path = Path();
    path.moveTo(0.0, 0.0);
    path.lineTo(width, 0.0);
    path.lineTo(0.0, 0.0);

    var p1 = new Offset(0.5*width / 4, 1*height/4);
    var p2 = new Offset(5*width / 4, 0*height / 4);
    path.quadraticBezierTo(p1.dx, p1.dy, p2.dx, p2.dy);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
