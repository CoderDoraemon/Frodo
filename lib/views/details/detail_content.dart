import 'package:Frodo/utils/log.dart';
import 'package:Frodo/views/details/detail.dart';
import 'package:flutter/material.dart';

class LDDetailContent extends StatefulWidget {
  String _imageUrl;

  LDDetailContent(this._imageUrl);

  @override
  _LDDetailContentState createState() => _LDDetailContentState();
}

class _LDDetailContentState extends State<LDDetailContent> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Hero(
              tag: widget._imageUrl,
              child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Image.network(widget._imageUrl))),
          Text("书影音"),
          FloatingActionButton(
              heroTag: "跳转",
              child: Text("跳转"),
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(LDDetail.routerName, arguments: "1213");
              }),
          FloatingActionButton(
              heroTag: "返回",
              child: Text("返回"),
              onPressed: () {
                Navigator.of(context).pop("返回回调");
              })
        ],
      ),
    );
  }
}
