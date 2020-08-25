import 'package:flutter/material.dart';

import 'widgets/home_banner.dart';
import 'widgets/home_header.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HomeHeader(),
          HomeBanner()
        ],
      ),
    );
  }
}
