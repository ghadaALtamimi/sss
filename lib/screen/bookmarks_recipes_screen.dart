import 'package:flutter/material.dart';
import 'package:instayum1/data.dart';

import 'package:instayum1/widget/cookbook_item.dart';

class bookmarked_recipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(25),
      children: Cookbook_Data.map((c) => cookbook_item(
            key,
            c.id,
            c.cookbookName,
            c.imageURLCookbook,
          )).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
