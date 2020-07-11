import 'package:flutter/material.dart';
import 'unknown_content.dart';

class LDUnknown extends StatelessWidget {

  static const String routerName = "/404";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("404"),
      ),
      body: LDUnknownContent(),
    );
  }
}
