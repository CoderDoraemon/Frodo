import 'package:Frodo/utils/log.dart';
import 'package:flutter/material.dart';
import 'detail_content.dart';

class LDDetail extends StatelessWidget {
  static const String routerName = "/detail";

  String _imageUrl;

  LDDetail(this._imageUrl);

  @override
  Widget build(BuildContext context) {

    FLog(this._imageUrl);

    return WillPopScope(
      onWillPop: () {
        Navigator.of(context).pop('1111');
        // true: 可以自动返回；flase: 自行写返回
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("详情"),
          // 第一种自定义返回
//        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {
//          Navigator.of(context).pop();
//        }),
        ),
        body: LDDetailContent(_imageUrl),
      ),
    );
  }
}
