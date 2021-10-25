import 'package:flutter/material.dart';
import 'package:instayum1/checkboxState.dart';

class shopinglistPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => shopinglist();
}

class shopinglist extends State<shopinglistPage> {
  bool outvalue = false;
  var checkedstyle = TextDecoration.none;
  var listOfIngrediant = [
    checkboxState(title: "Milk"),
    checkboxState(title: "eags"),
    checkboxState(title: "cream"),
    checkboxState(title: "sugar"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(padding: EdgeInsets.all(12), children: [
        ...listOfIngrediant.map(creatCheckbox).toList(),
      ]),
    );
  }

  Widget creatCheckbox(checkboxState checkbox) => CheckboxListTile(
      controlAffinity: ListTileControlAffinity.leading,
      activeColor: Colors.orange[600],
      value: checkbox.outvalue,
      title: Text(checkbox.title,
          style: TextStyle(
            decoration: checkbox.checkedstyle,
            decorationColor: Colors.orange[600],
            decorationThickness: 4,
          )),
      onChanged: (value) {
        setState(() {
          checkbox.outvalue = value!;
          if (checkbox.outvalue == true) {
            checkbox.checkedstyle = TextDecoration.lineThrough;
          } else {
            checkbox.checkedstyle = TextDecoration.none;
          }
        });
      });
}
