import 'package:flutter/material.dart';
import 'subject_content.dart';

class LDSubject extends StatelessWidget {

  static const String routerName = "/subject";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("书影音"),
      ),
      body: LDSubjectContent(),
    );
  }
}
