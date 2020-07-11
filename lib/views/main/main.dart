import 'package:flutter/material.dart';
import 'initialize_items.dart'; // 获取tabbar Items
import '../home/home.dart';
import '../group/group.dart';
import '../mall/mall.dart';
import '../subject/subject.dart';
import '../profile/profile.dart';

class LDMainScreen extends StatefulWidget {

  static const String routerName = "/";

  @override
  _LDMainScreenState createState() => _LDMainScreenState();
}

class _LDMainScreenState extends State<LDMainScreen> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: <Widget>[
          LDHome(),
          LDSubject(),
          LDGroup(),
          LDMall(),
          LDProfile()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        selectedItemColor: const Color(0xff69BA62),
        type: BottomNavigationBarType.fixed,
        items: items,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
