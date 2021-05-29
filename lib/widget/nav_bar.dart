import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skoder/page1.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home)),
            BottomNavigationBarItem(icon: Icon(Icons.location_on)),
            BottomNavigationBarItem(icon: Icon(Icons.sentiment_dissatisfied)),
            BottomNavigationBarItem(icon: Icon(Icons.description)),
            BottomNavigationBarItem(icon: Icon(Icons.settings)),
          ],
        ),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (context) {
                  return CupertinoPageScaffold(child: Page1());
                },
              );
            case 0:
              return CupertinoTabView(
                builder: (context) {
                  return CupertinoPageScaffold(child: Page1());
                },
              );
            default:
              return CupertinoTabView(
                builder: (context) {
                  return CupertinoPageScaffold(child: Page1());
                },
              );
          }
        });
  }
}
