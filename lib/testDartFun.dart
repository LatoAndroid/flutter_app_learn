import 'package:flutter/cupertino.dart';

class TestDartFun {
  void mainOut() {
    assert(isShadiao3(0));

    assert(isShadiao4(a: 1, b: 1));
    assert(isShadiao5(b: null));
    assert(isShadiao6(1, 1, 2));
    assert(isShadiao7(1, 1, c: 2));

    test1();
    test2();
  }

  ///在dart中 一切都是对象 包括方法
  bool isShadiao() {
    return true;
  }

  isShadiao2() {
    return true;
  }

  ///一行语句的时候可以使用箭头语法
  bool isShadiao3(int linyibiao) => linyibiao == 0;

  /**
   * 可选参数 {}包裹参数
   */
  bool isShadiao4({int a, int b}) {
    return a == b;
  }

  /// @required 表示必要参数
  bool isShadiao5({int a, @required int b}) {
    return a == b;
  }

  ///位置可选参数
  bool isShadiao6(int a, int b, [int c]) {
    return a + b == c;
  }

  ///命名可选参数
  bool isShadiao7(int a, int b, {int c}) {
    return a + b == c;
  }

  ///默认参数值  只可以用于可选参数
  bool isShadiao8({int a = 1, int b = 2}) {
    return a == b;
  }

  bool isShadiao9([int a = 1, int b = 2]) {
    return a == b;
  }

  ///函数可以作为另外一个函数的参数
  bool test1() {
    var list = [1, 2, 3];
    list.forEach(printE);

    ///匿名函数
    var a = (msg) => '${msg}test';
    print(a(2));
    list.forEach((element) => print(element));

    var b = (int a, int b) {
      return a + b;
    };

    b.call(1, 2);

  }

  void printE(int element) {
    print(element);
  }


  ///词法闭包 闭包 即一个函数对象，即使函数对象的调用在它原始作用域之外， 依然能够访问在它词法作用域内的变量。
  bool test2(){
    //创造一个+1的函数
    var function = add(1);
    assert(function(3) == 4);
  }


  Function add(int addBody){
    return (num i)=>addBody + i;
  }



}
