import 'package:flutter/material.dart';

class my_meal_plans extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
        ),
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            Card(
              child: Container(
                height: 90,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Center(
                          child: Row(
                            children: [
                              Expanded(
                                flex: 5,
                                child: ListTile(
                                  title: Text(
                                    "Keto diet plan",
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.white),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    SizedBox(
                                      width: 8,
                                    ),
                                    ElevatedButton(
                                      child: Text("Make it my plan"),
                                      style: ElevatedButton.styleFrom(
                                        onPrimary: Colors.white,
                                        primary: Color(0xFFeb6d44),
                                      ),
                                      onPressed: () {},
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      flex: 3,
                    ),
                  ],
                ),
              ),
              elevation: 8,
              margin: EdgeInsets.all(10),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(color: Colors.white)),
              color: Colors.orangeAccent,
            ),
          ],
        ),
      ),
    );
  }
}
