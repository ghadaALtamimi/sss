import 'package:flutter/material.dart';

class my_meal_plans extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        children: [
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  title: Text('Keto dite plan'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    const SizedBox(width: 8),
                    TextButton(
                      child: const Text('make it my plan'),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ],
            ),
            elevation: 8,
            shadowColor: Colors.orange,
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
