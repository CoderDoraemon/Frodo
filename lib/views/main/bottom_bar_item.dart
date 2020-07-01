import 'package:flutter/material.dart';

class LDBottomBarItem extends BottomNavigationBarItem {

  LDBottomBarItem(String iconName, String title): super(
    title: Text(title),
    // gaplessPlayback首次点击闪烁
    icon: Image.asset("assets/images/tabbar/$iconName.png", width: 32, gaplessPlayback: true,),
    activeIcon: Image.asset("assets/images/tabbar/${iconName}_active.png", width: 32, gaplessPlayback: true,),);
}