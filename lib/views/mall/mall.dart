import 'package:flutter/material.dart';
import 'mall_content.dart';

class LDMall extends StatelessWidget {

  static const String routerName = "/mall";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("市集"),
      ),
      body: LDMallContent(),
    );
  }
}

