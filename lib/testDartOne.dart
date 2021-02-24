class TestDartOne {
  var name = "jiangwei";

  dynamic name2 = "jiangwei2";

  String name3 = "jiangwei3";

  final name4 = "jiangwei4";

  static const name5 = "test5";

  int testNull;

  _privateFun() {}

  publicFun() {
    //就算是int类型  未定义也是空（不是java理解的0）
    assert(testNull == null);

    //print(name2);

    //testStringToNumber();

    testString();
  }

  void testStringToNumber() {
    var string1 = "1";

    //// String -> int   1
    var int1 = int.parse(string1);

    //String -> double  1.0
    var double1 = double.parse(string1);



    String string2 = 1.toString();
    //double->string 精确到几位小数
    String string3 = 3.145926.toStringAsFixed(2);
    print(string3);


  }

  void testString() {
    //Dart 字符串是一组 UTF-16 单元序列。 字符串通过单引号或者双引号创建。

  }
}
