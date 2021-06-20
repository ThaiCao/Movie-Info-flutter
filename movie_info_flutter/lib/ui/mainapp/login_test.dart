// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:movie_info_flutter/shared/utils/constrants.dart';
// import 'package:movie_info_flutter/ui/favorite/favorite_screen.dart';
// import 'package:movie_info_flutter/ui/home/home_screen.dart';
// import 'package:movie_info_flutter/ui/more/more_screen.dart';
// import 'package:movie_info_flutter/ui/recent/recent_screen.dart';
//
// class MainAppWidget extends StatefulWidget{
//
//   MainAppWidget({Key? key}) : super(key: key);
//
//   @override
//   State<MainAppWidget> createState() => MainAppWidgetFulWidgetState();
//
// }
//
// class MainAppWidgetFulWidgetState extends State<MainAppWidget>{
//
//   int selectedIndex  =0;
//   static const TextStyle optionStyle =
//   TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   static List<Widget> widgetOptions = <Widget>[
//     HomeScreen(key: Key("home_tab")),
//     RecentScreen(),
//     FavoriteScreen(),
//     MoreScreen(),
//   ];
//
//   final Shader linearGradient = LinearGradient(
//     colors: <Color>[Colors.deepOrangeAccent, Colors.purple],
//   ).createShader(Rect.fromLTWH(0.0, 0.0, 100.0, 70.0));
//
//
//   // @override
//   // Widget build(BuildContext context) {
//   //   return Scaffold(
//   //     backgroundColor: Colors.white,
//   //     appBar: buildAppbar(),
//   //     body: Container(
//   //       child: widgetOptions.elementAt(selectedIndex),
//   //     ),
//   //     // bottomNavigationBar: BottomNavBar(key: Key("navBarView"),),
//   //     bottomNavigationBar: BottomNavigationBar(
//   //       items: <BottomNavigationBarItem>[
//   //         BottomNavigationBarItem(
//   //           icon: SvgPicture.asset("assets/icons/home.svg"),
//   //           label: 'Home',
//   //           backgroundColor: Colors.purple,
//   //         ),
//   //         BottomNavigationBarItem(
//   //           icon: SvgPicture.asset("assets/icons/Glyph.svg"),
//   //           label: 'Recent',
//   //           backgroundColor: Colors.purple,
//   //         ),
//   //         BottomNavigationBarItem(
//   //           icon: SvgPicture.asset("assets/icons/Following.svg"),
//   //           label: 'Favorite',
//   //           backgroundColor: Colors.purple,
//   //         ),
//   //         BottomNavigationBarItem(
//   //           icon: SvgPicture.asset("assets/icons/more.svg"),
//   //           label: 'More',
//   //           backgroundColor: Colors.purple,
//   //         ),
//   //       ],
//   //       currentIndex: selectedIndex,
//   //       selectedItemColor: Colors.white70,
//   //       onTap: onItemSelected,
//   //     ),
//   //   );
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//         body: Stack(
//           children: <Widget>[
//             Container(
//               color: Colors.white.withOpacity(0.8),
//             ),
//             ClipPath(
//               clipper: ArcClipperBottom(),
//               child: Container(
//                 decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                         colors: [Colors.deepOrangeAccent, Colors.purple],
//                         begin: Alignment.bottomRight,
//                         end: Alignment.centerLeft)),
//               ),
//             ),
//             ClipPath(
//               clipper: ArcClipperTop(),
//               child: Container(
//                 decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                         colors: [Colors.purple, Colors.deepOrangeAccent],
//                         begin: Alignment.topCenter,
//                         end: Alignment.centerLeft)),
//               ),
//             ),
//
//             Container(
//               padding: EdgeInsets.all(20.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: <Widget>[
// //              Opacity(opacity: 0.1, child: Image.asset('assets/ic_launcher.png', height: size.width/5, width: size.width/5,),),
//                   Align(
//                     alignment: Alignment.topLeft,
//                     child: Padding(
//                       padding: EdgeInsets.only(top: 10.0),
//                       child: Text(
//                         "login title",
//                         style: new TextStyle(
//                             fontSize: 30.0,
//                             fontWeight: FontWeight.bold,
//                             foreground: Paint()..shader = linearGradient),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(top: 8.0),
//                     child: FlatButton(
//                         onPressed: () {},
//                         child: Row(
//                           children: <Widget>[
//                             Text("account"),
//                             Text(
//                               "createAccount",
//                               style: TextStyle(color: Colors.deepOrange),
//                             )
//                           ],
//                         )),
//                   ),
//                   Row(
//                     children: <Widget>[
//                       Expanded(
//                           child: Row(
//                             children: <Widget>[
//                               Checkbox(value: true, checkColor: Colors.white, activeColor: Colors.purple,onChanged: (bool) {
//
//                               }),
//                               Text("remember")
//                             ],
//                           )),
//                       Text("forgotPassword")
//                     ],
//                   ),
//                   FlatButton(
//                       onPressed: () {
//                       },
//                       child: Padding(
//                         padding: EdgeInsets.only(
//                             top: 40.0, bottom: 20.0, right: 30.0, left: 30.0),
//                         child: Container(
//                           width: double.infinity,
//                           height: 50.0,
//                           child: Center(
//                             child: Text(
//                               "Login",
//                               style: TextStyle(color: Colors.white, fontSize: 20.0),
//                             ),
//                           ),
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.all(Radius.circular(25.0)),
//                               gradient: LinearGradient(
//                                   colors: [Colors.deepOrangeAccent, Colors.purple],
//                                   begin: Alignment.bottomRight,
//                                   end: Alignment.centerLeft),
//                               boxShadow: [
//                                 BoxShadow(
//                                     color: Colors.deepPurple,
//                                     blurRadius: 5.0,
//                                     offset: Offset(5.0, 5.0)),
//                               ]),
//                         ),
//                       )),
//                   Padding(
//                     padding: EdgeInsets.only(top: 8.0, bottom: 12.0),
//                     child: Text("Login width"),
//                   ),
//                   Row(
//                     children: <Widget>[
//                       Expanded(
//                         child: Text("facebook"),
//                       ),
//                       Text("googlePlus"),
//                       Expanded(
//                         child: Text("twitter"),
//                       )
//                     ],
//                   )
//                 ],
//               ),
//             )
//           ],
//         ));
//   }
//
//   Widget socialButtons(image) => GestureDetector(
//     child: Container(
//       // child: Image.asset('assets/$image.png'),
//       width: 50.0,
//       height: 50.0,
//     ),
//     onTap: () {
//       switch (image) {
//         // case facebook:
//         //   {
//         //     print('facebook selected');
//         //   }
//         //   break;
//         //
//         // case googlePlus:
//         //   {
//         //     print('google-plus selected');
//         //   }
//         //   break;
//         //
//         // case twitter:
//         //   {
//         //     print('twitter selected');
//         //   }
//         //   break;
//
//         default: {
//
//         }
//       }
//     },
//   );
//
//   void onItemSelected(int index){
//     setState((){
//       selectedIndex = index;
//     });
//   }
//
//
//   AppBar buildAppbar(){
//     return AppBar(
//       backgroundColor: Colors.purple,
//       elevation: 0,
//       leading: IconButton(
//         padding: EdgeInsets.only(left: margin20),
//         icon: SvgPicture.asset("assets/icons/menu.svg"),
//         onPressed: (){},
//       ),
//       actions: <Widget>[
//         IconButton(
//           padding: EdgeInsets.symmetric(horizontal: margin20),
//           icon: SvgPicture.asset("assets/icons/search.svg"),
//           onPressed: (){},
//           color: Colors.white,
//         )
//       ],
//       title: Text("Movie info Flutter"),
//       titleTextStyle: TextStyle(color: Colors.red),
//       toolbarTextStyle: TextStyle(color: Colors.amberAccent),
//     );
//   }
// }
//
// class ArcClipperBottom extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var width = size.width;
//     var height = size.height;
//     var path = Path();
//     path.moveTo(0.0, height);
//     path.lineTo(0, height);
//     path.lineTo(width, height);
//
//     var p1 = new Offset(width / 4, height);
//     var p2 = new Offset(0 * width / 4, 3.5 * height / 4);
//     path.quadraticBezierTo(p1.dx, p1.dy, p2.dx, p2.dy);
//
//     var p3 = new Offset(2 * width / 4, 3.5 * height / 4);
//     var p4 = new Offset(0 * width / 4, 3.5 * height / 4);
//     path.quadraticBezierTo(p3.dx, p3.dy, p4.dx, p4.dy);
//
//     path.close();
//     return path;
//   }
//
//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }
//
// class ArcClipperTop extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var width = size.width;
//     var height = size.height;
//     var path = Path();
//     path.moveTo(0.0, 0.0);
//     path.lineTo(width, 0.0);
//     path.lineTo(0.0, 0.0);
//
//     var p1 = new Offset(0.5*width / 4, 1*height/4);
//     var p2 = new Offset(5*width / 4, 0*height / 4);
//     path.quadraticBezierTo(p1.dx, p1.dy, p2.dx, p2.dy);
//
//     path.close();
//     return path;
//   }
//
//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }
