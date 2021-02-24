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

    testBoolean();

    testList();
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
    var a = "abc";
    var b = "abcde";
    var c = "${a}de";
    //print(e);
    //字符串可以用占位运算符，可以用==运算符用来测试两个对象是否相等
    assert(b == c);

    //使用连续三个单引号或者三个双引号实现多行字符串对象的创建
    var d = '''
      我是多行
         是吧
    ''';

    print(d);

    var e = r"原始raw字符串 转义字符会失去意义";
    print(e);
  }

  void testBoolean() {
    //检查空字符串  注意  这里如果是null会报错
    var a = '';
    assert(a.isEmpty);

    var b;
    assert(b == null);
  }

  void testList() {
    var list1 = [1, 2, 3];

    assert(list1.length == 3);

    assert(list1[1] == 2);

    //可以定位编译时常量  无法改变内部值
    final list2 = const [1, 2, 3];

    //list2[1] = 3; 会报错



    var set1 = {1, 2, 3};

    var set2 = <String>{};
    var set3 = {}; //请注意  这样生成的是一个map

    print(set2);

    set2.add("value");

    //可以定位编译时常量  无法改变内部值
    final set4 = const {1, 2, 3};



  }
}
