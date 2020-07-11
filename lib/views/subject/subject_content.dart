import 'dart:developer';

import 'package:Frodo/utils/log.dart';
import 'package:Frodo/views/details/detail.dart';
import 'package:flutter/material.dart';

class LDSubjectContent extends StatefulWidget {
  @override
  _LDSubjectContentState createState() => _LDSubjectContentState();
}

class _LDSubjectContentState extends State<LDSubjectContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("书影音"),
          RaisedButton.icon(onPressed: () {
            Navigator.of(context).pushNamed(LDDetail.routerName).then((value) => {
              FLog(value)
            });

          }, icon: Icon(Icons.settings), label: Text("跳转"))
        ],
      ),
    );
  }
}
