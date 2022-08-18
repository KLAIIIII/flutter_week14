import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  final List<String> menus =['A','B','C','D','E'];
  final List<int> colorCodes =[600,500,400,300,200];

  ListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Builder"),
      ),
      body: Center(
        child: ListView.builder(
          padding: EdgeInsets.all(8.0),
            itemCount: menus.length,
            itemBuilder: (context, index) {
              return Container(
                height: 50,
                color: Colors.red[colorCodes[index]],
                child: Text('${menus[index]}'),
              );
            }),
      ),
    );
  }
}
