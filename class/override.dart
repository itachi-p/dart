// メソッドのオーバーライド

class BaseClass {
  int value;

  BaseClass(this.value);

  void helloWorld() => print("Hello, World!");
}

class SubClass extends BaseClass {
  SubClass(int value) 
  : super(value); // 親(Base)クラスのコンストラクタ

  @override // オーバーライドすることを明示する
  void helloWorld() {
    print("こんにちは、世界！私はサブクラスです。");
    super.helloWorld(); // 親クラスのメソッドを呼び出す
  }
}

void main() {
  final SubClass subClass = SubClass(10);
  print(subClass.value);
  subClass.helloWorld();
}