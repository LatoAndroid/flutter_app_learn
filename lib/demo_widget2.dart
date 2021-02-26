import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_1/demo_widget.dart';

class DemoWidget2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DemoState2();
  }
}

class _DemoState2 extends State<DemoWidget2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Title(
            title: "我好帅",
            color: Colors.black,
            child: Container(
              child: Text("哈哈哈"),
            ),
          ),
        ),

        // ignore: missing_return
        body: FlatButton(
          onPressed: doPressed(),
          child: ListView.builder(itemBuilder: (context, index) {
            return DemoWidget();
          }),
        ));
  }

  doPressed() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=> DemoWidget2()));
  }
}
