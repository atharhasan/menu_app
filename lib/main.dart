import 'package:flutter/material.dart';
import 'package:menu_app/menu.dart';
import 'package:menu_app/sign_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Menu App',
      home: SignPage(),
    );
  }
}
