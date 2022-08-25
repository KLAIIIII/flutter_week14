import 'package:flutter/material.dart';

class GridViewCardPage extends StatelessWidget {
  const GridViewCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Menu"),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          children: List.generate(6, (index) {
            return Card(
              color: Colors.blue[200],
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(200)
                )
              ),
              child: InkWell(
                borderRadius: BorderRadius.all(
                  Radius.circular(200)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person,size: 65,color: Colors.yellow[300]),
                    Text("Menu-1",style: TextStyle(color: Colors.yellow[300])),
                    ],
                ),
                onTap: (){},
              ),
            );
          })
        ),
      ),
    );
  }
}
