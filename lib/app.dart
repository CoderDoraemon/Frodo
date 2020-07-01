import 'package:flutter/material.dart';
import 'views/main/main.dart';

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
          // 去除tabbar点击选中波纹效果
          highlightColor: Colors.transparent,
          splashColor: Color.fromRGBO(0, 0, 0, 0),
      ),
      home: LDMainScreen()
    );
  }
}

