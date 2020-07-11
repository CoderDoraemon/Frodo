import 'package:Frodo/views/home/home.dart';
import 'package:Frodo/views/main/main.dart';
import 'package:Frodo/views/unknown/unknown.dart';
import 'package:flutter/material.dart';

import '../views/home/home.dart';
import '../views/group/group.dart';
import '../views/mall/mall.dart';
import '../views/subject/subject.dart';
import '../views/profile/profile.dart';
import '../views/details/detail.dart';

class LDRouter {

  // 路由列表
  static final Map<String, WidgetBuilder> routes = {
    LDMainScreen.routerName: (ctx) => LDMainScreen(),
    LDHome.routerName: (ctx) => LDHome(),
    LDGroup.routerName: (ctx) => LDGroup(),
    LDMall.routerName: (ctx) => LDMall(),
    LDSubject.routerName: (ctx) => LDSubject(),
    LDProfile.routerName: (ctx) => LDProfile(),
  };

  // 初始化入口路由
  static final String initialRoute = LDMainScreen.routerName;

  // 特殊处理传参路由
  static final RouteFactory onGenerateRoute = (settings) {
    if (settings.name == LDDetail.routerName) {
      return MaterialPageRoute(
          builder: (ctx) {
            return LDDetail(settings.arguments);
          }
      );
    }
    return null;
  };

  // 未找到路由默认
  static final RouteFactory onUnknownRoute = (settings) {
    return MaterialPageRoute(
        builder: (ctx) {
          return LDUnknown();
        }
    );
  };



}