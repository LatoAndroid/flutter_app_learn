import 'dart:ui';

import 'package:flutter/material.dart';

class DemoWidget extends StatefulWidget {
  DemoWidget();

  @override
  State<StatefulWidget> createState() {
    return _DemoState();
  }
}

class _DemoState extends State<DemoWidget> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(10.0),
      width: 100,
      height: 100,
      color: Colors.deepOrange,
      child: Center(
        child: Row(
          //主轴居中
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          textDirection: TextDirection.ltr,
          children: [
            Expanded(
              flex: 1,
              child: Image(
                image: AssetImage("assets/images/pay_happy.png"),
                width: 100,
                height: 100,
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 10)),
            Expanded(
                flex: 1,
                child: Text(
                  "我好帅啊啊啊啊啊啊啊啊啊啊啊啊",
                  style: TextStyle(color: Colors.grey, fontSize: 20.0),
                  overflow: TextOverflow.ellipsis,
                  textDirection: TextDirection.ltr,
                  maxLines: 1,
                )),
          ],
        ),
      ),
    );
  }
}
