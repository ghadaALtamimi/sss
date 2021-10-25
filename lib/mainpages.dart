import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instayum1/add_recipe_page.dart';
import 'package:instayum1/discover_page.dart';
import 'package:instayum1/page/profile_page.dart';
import 'package:instayum1/shopinglist_page.dart';

import 'mealplaner.dart';

class pages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => appPages();
}

class appPages extends State<pages> {
  var appBarTitel = "profile";
  int indexOfPages = 4;
  List<Widget> _listOfPagesContent = [
    //---------discover page  0-------------
    discoverPage(),
    //--------- mealPlaner page 1------------
    mealPlanerPage(),
    //----------add recipe page 2------------
    addRecipePage(),
    //----------shopping list page 3---------
    shopinglistPage(),
    //----------profile page 4---------------
    ProfilePage(),
  ];
  void change(int index) {
    setState(() {
      indexOfPages = index;
      if (index == 0)
        appBarTitel = "Discover Page";
      else if (index == 3)
        appBarTitel = "Shopping List";
      else if (index == 2)
        appBarTitel = "Add recipe";
      else if (index == 1)
        appBarTitel = "Meal Plan";
      else
        appBarTitel = "Profile";
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          leading: Container(
              color: Colors.white,
              child: Image.asset("assets/images/logo.png")),
          backgroundColor: Color(0xFFeb6d44),
          title: Text(appBarTitel),
        ),
        body: Scrollbar(
          isAlwaysShown: true,
          child: _listOfPagesContent[indexOfPages],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xFFeb6d44),
          unselectedItemColor: Colors.grey[600],
          currentIndex: indexOfPages,
          onTap: change,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.saved_search_sharp), label: "discover"),
            BottomNavigationBarItem(
                icon: Icon(Icons.table_view), label: "meal planner"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_sharp), label: "add recipe"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag), label: "sopping list"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box_sharp), label: "profile"),
          ],
        ),
      ),
    );
  }
}
