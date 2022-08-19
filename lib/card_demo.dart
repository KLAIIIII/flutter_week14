import 'package:flutter/material.dart';

class Menu {
  final String? title;
  final IconData? icon;
  final Color? bkColor;
  const Menu({this.title, this.bkColor, this.icon});
}

List<Menu> menus = [
  const Menu(title: 'MENU-1', icon: Icons.person, bkColor: Colors.green),
  const Menu(title: 'MENU-2', icon: Icons.person_add, bkColor: Colors.yellow),
  const Menu(title: 'MENU-3', icon: Icons.wifi, bkColor: Colors.blue),
  const Menu(title: 'MENU-3', icon: Icons.add_a_photo, bkColor: Colors.brown),
];

class CardDemo extends StatelessWidget {
  const CardDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Demo"),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: GridView.count(
        crossAxisCount: (menus.length),
        children: List.generate(menus.length, (index) {
          return Card(
            margin: EdgeInsets.all(12),
            child: InkWell(
              onTap: () {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(menus[index].icon, size: 40, color: menus[index].bkColor),
                  Text(menus[index].title!, style: TextStyle(fontSize: 15, color: Colors.black),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    ),
    );
  }
}