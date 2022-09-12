import 'package:flutter/material.dart';

class Menu {
  final String title;
  final IconData? icon;
  final Color bkColor;

  Menu({required this.title, required this.icon, required this.bkColor});
}

List<Menu> menu = [
  Menu(title: "MENU-1", icon: Icons.person, bkColor: Colors.pinkAccent),
  Menu(title: "MENU-1",icon: Icons.abc_rounded, bkColor: Colors.brown),
  Menu(title: "MENU-1",icon: Icons.add_a_photo, bkColor: Colors.amber),
];

class GridViewCardPage extends StatelessWidget {
  const GridViewCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Text("Card Menu"),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: GridView.count(
            crossAxisCount: menu.length,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            children: List.generate(menu.length, (index) {
              return Card(
                color: menu[index].bkColor,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(200))),
                child: InkWell(
                  borderRadius: BorderRadius.all(Radius.circular(200)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(menu[index].icon, size: 65, color: Colors.white),
                      Text(menu[index].title, style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  onTap: () {},
                ),
              );
            })),
      ),
    );
  }
}
