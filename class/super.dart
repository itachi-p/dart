// 継承(inheritance)
// 正直言って、継承の講義としてあまり良い教材だとは思えない。

class BaseClass {
  int value;

  BaseClass(this.value);

  void helloWorld() => print("Hello, World!");
}

class SubClass extends BaseClass {
  SubClass(int value) : super(value); // 親クラスのコンストラクタを呼び出す
}

void main() {
  final SubClass subClass = SubClass(10);
  print(subClass.value);
  subClass.helloWorld();
}