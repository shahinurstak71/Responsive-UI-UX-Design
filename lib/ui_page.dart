import 'package:flutter/material.dart';

import 'package:skoder/widget/nav_bar.dart';

class UiPageSkoder extends StatelessWidget {
  const UiPageSkoder({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(),
    );
  }
}
