import 'package:flutter/material.dart';
import 'card_demo.dart';
import 'contact.dart';
import 'grid_view_card_page.dart';
import 'grid_view_page.dart';
import 'home.dart';
import 'list_tile_view.dart';
import 'list_view_builder.dart';
import 'list_view_demo.dart';
import 'list_view_menu.dart';
import 'list_view_separate.dart';
import 'profile.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); //1.constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      initialRoute: '/',
      routes: {
        '/':(context) =>HomePage(),
      },
    );
  }
}
