import 'package:flutter/foundation.dart';

class TestDartObject {
  void mainOut() {
    Point point = Point.origin(1, 2, 3);

    var dog = Dog();
    dog.work();

  }
}

class Point {
  num x, y;

  Point(this.x, this.y);

  Point.origin(int a, int b, [int c]) {
    x = a;
    y = b;
  }

  // 在构造函数体执行之前，
// 通过初始列表设置实例变量。
  Point.fromJson(Map<String, num> json)
      : x = json['x'],
        y = json['y'] {
    print('In Point.fromJson(): ($x, $y)');
  }

  // 指向主构造函数
  Point.alongXAxis(num x) : this(x, 0);
}

class Point2 extends Point {
  Point2(int a, int b, [int c]) : super(a, b) {
      //自己的其他初始化操作
  }
}

class Point3 {
  final num x, y;

  //常量构造函数
  const Point3(this.x, this.y);
}

class Point4 {
   num a;

   //get方法
   num get av{
     return a;
   }


  //工厂构造函数  比如生成不同key的logger
  factory Point4() {
    //工厂构造函数无法访问this  this.a;
    return Point4();
  }

  @override
  noSuchMethod(Invocation invocation) {
    return super.noSuchMethod(invocation);
  }
}



class MixinParent{

}

///通过on指定mixin父类类型
mixin Walker on MixinParent {
  void work(){
    print("work!");
  }


}

class Dog extends MixinParent with Walker{

}
