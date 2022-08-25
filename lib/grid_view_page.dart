import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          children: [
            Container(
              color: Colors.green[300],
              padding: EdgeInsets.all(8),
              child: Text("0-1"),
            ),
            Container(
              color: Colors.green[300],
              padding: EdgeInsets.all(8),
              child: Text("0-1"),
            ),
            Container(
              color: Colors.green[300],
              padding: EdgeInsets.all(8),
              child: Text("0-1"),
            ),
            Container(
              color: Colors.green[300],
              padding: EdgeInsets.all(8),
              child: Text("0-1"),
            ),
            Container(
              color: Colors.green[300],
              padding: EdgeInsets.all(8),
              child: Text("0-1"),
            ),
          ],
        ),
      ),
    );
  }
}
