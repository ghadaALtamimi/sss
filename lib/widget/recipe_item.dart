import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class recipe_Item extends StatelessWidget {
  final String id;
  final String recipeName;
  final String category;
  final String imageURL;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  const recipe_Item(Key? key, this.id, this.recipeName, this.category,
      this.imageURL, this.ingredients, this.steps, this.duration);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(imageURL),
          ),
          // Positioned(
          // bottom: ,
          // child:
          Container(
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Text(recipeName,
                style: TextStyle(fontSize: 15, color: Colors.white)),
            // ),
          ),
        ],
      ),
    );

    // return InkWell(
    //   onTap: () {},
    //   child: Container(
    //     child: Container(
    //       child: Text(recipeName,
    //           style: TextStyle(fontSize: 15, color: Colors.white)),
    //     ),
    //     height: 30.0,
    //     width: MediaQuery.of(context).size.width - 100.0,
    //     decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(5),
    //         color: Colors.blue,
    //         image: DecorationImage(
    //         image: new NetworkImage(imageURL), fit: BoxFit.fill)),
    //   ),
    // );
  }
}
