import 'package:flutter/material.dart';
import 'package:skoder/ui_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: UiPageSkoder(),
        theme: ThemeData(primaryColor: Colors.brown[50]));
  }
}
