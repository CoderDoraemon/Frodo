import 'package:flutter/material.dart';
import 'profile_content.dart';

class LDProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的"),
      ),
      body: LDProfileContent(),
    );
  }
}
