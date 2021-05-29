import 'package:flutter/material.dart';
import 'package:skoder/widget/body_page.dart';

class Page1 extends StatelessWidget {
  const Page1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.brown[50],
          appBar: AppBar(
            elevation: 0.0,
            title: Text(
              "Dashboard",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            actions: [
              Icon(
                Icons.edit_outlined,
                size: 30,
              ),
              SizedBox(
                width: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.filter_alt_outlined,
                  size: 30,
                ),
              )
            ],
          ),
          body: BodyPage(),
        ),
      ),
    );
  }
}
