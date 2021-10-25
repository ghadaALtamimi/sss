import 'package:flutter/material.dart';

//import 'dynamic_fields.dart';
class addRecipePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => addRecipe();
}

class addRecipe extends State<addRecipePage> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          child: Stack(children: <Widget>[
            Center(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color(
                    0xFFeb6d44,
                  )),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                margin: EdgeInsets.all(30),
                width: 300,
                height: 200,
                //color: Colors.grey,
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add_a_photo),
                  label: Text("add recipe photo"),
                  style: ButtonStyle(
                      foregroundColor: // لون الخط
                          MaterialStateProperty.all(Color(0xFFeb6d44))),
                ),
              ),
            ),
          ]),
        ),
      ],
    ));
  }
}
