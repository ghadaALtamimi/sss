import 'package:flutter/material.dart';

class mealPlanerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => mealPlaner();
}

class mealPlaner extends State<mealPlanerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFFeb6d44),
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        body: ListView(children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 40),
            child: Center(
              child: DataTable(
                columns: [
                  DataColumn(label: Text('DAY')),
                  DataColumn(
                      label: Text(
                    'breakfast',
                  )),
                  DataColumn(label: Text('lunch')),
                  DataColumn(label: Text('dinner'))
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('sat')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('sun')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('mun')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('tus')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('wed')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('thu')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('fri')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ]),
                ],
              ),
            ),
          )
        ]));
  }
}
