import 'package:flutter/material.dart';
import 'package:instayum1/page/my_recipes.dart';
import 'package:flutter/cupertino.dart';
import 'package:instayum1/utils/user_preferences.dart';
import 'page/my_recipes.dart';

//import 'package:flutter/material.dart';

class discoverPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => discover();
}

class discover extends State<discoverPage> {
  bool value = false;
  final cookingEnthusist = UserPreferences.myCooking_Enthusiast;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 600,
            childAspectRatio: 1 / 2,
            crossAxisSpacing: 20,
          ),
          children: <Widget>[
            Container(
              height: 600,
              child: my_recipes(),
              padding: EdgeInsets.only(top: 20),
            ),
          ]),

      //Padding(
      //     // padding: EdgeInsets.symmetric(
      //     //     vertical: double.infinity, horizontal: double.maxFinite),
      //     // child:
      //     Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   children: [

      //     Container(
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.start,
      //         children: [
      //           Text("Recommended recipes"),

      // Container(
      // child: GridView(
      //   children: <Widget>[],
      //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      //     maxCrossAxisExtent: 200,
      //     childAspectRatio: 3 / 2,
      //     crossAxisSpacing: 20,
      //   ),
      //           // ),
      //           // ),
      //         ],
      //       ),
      //     ),
      //     Image(
      //       image: AssetImage("assets/images/HLine.png"),
      //       width: double.infinity,
      //     )
      //   ],
      // ),
      // //),
      // //     body: Column(
      // //   children: [
      // //     //-----------------------------recomended-----------

      // //     Container(
      // //       child: GridView(
      // //         children: <Widget>[],
      // //         gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      // //           maxCrossAxisExtent: 200,
      // //           childAspectRatio: 3 / 2,
      // //           crossAxisSpacing: 20,
      // //         ),
      // //       ),
      // //     ),
      // //     // Padding(
      // //     //   padding: EdgeInsets.symmetric(horizontal: 10.0),
      // //     //   child: Container(
      // //     //     height: 1.0,
      // //     //     width: 130.0,
      // //     //     color: Colors.black,
      // //     //   ),
      // //     // ),
      // //     Image.asset("assets/images/HLine.png"),
      // //     //-----------------------------who i fowllwe------------
      // //     Container(
      // //       child: GridView(
      // //         children: <Widget>[],
      // //         gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      // //           maxCrossAxisExtent: 200,
      //           childAspectRatio: 3 / 2,
      //           crossAxisSpacing: 20,
      //         ),
      //       ),
      //     ),
      //   ],
      // )
      //
    );
  }
}
