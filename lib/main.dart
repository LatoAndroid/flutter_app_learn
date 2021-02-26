import 'package:flutter/material.dart';
import 'package:flutter_app_1/demo_widget.dart';
import 'package:flutter_app_1/testDartOne.dart';

import 'demo_widget2.dart';
import 'testDartFun.dart';
import 'testDartObject.dart';

void main() {
  var one = TestDartOne();
  var testFun = TestDartFun();
  var testObj = TestDartObject();

  //one.publicFun();
  //testFun.mainOut();
  testObj.mainOut();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   // return DemoWidget(Icons.star);
    return MaterialApp(
      title: "爱你",
      home: DemoWidget2(),
    );
  }
}
