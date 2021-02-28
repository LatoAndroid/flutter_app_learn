import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_1/demo_widget.dart';

class DemoWidget3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DemoState3();
  }
}

class _DemoState3 extends State<DemoWidget3> {
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

    );
  }
}
