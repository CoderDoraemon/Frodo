import 'package:flutter/material.dart';
import 'home_content.dart';

class LDHome extends StatelessWidget {

  static const String routerName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: LDHomeContent(),
    );
  }
}

