import 'package:flutter/material.dart';
import 'group_content.dart';

class LDGroup extends StatelessWidget {

  static const String routerName = "/group";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("小组"),
      ),
      body: LDGroupContent(),
    );
  }
}

