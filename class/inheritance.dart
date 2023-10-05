// 継承(inheritance)
// 正直言って、継承の講義としてあまり良い教材だとは思えない。

class BaseClass {
  final int value = 100;
  void helloWorld() => print("Hello, World!");
}

class SubClass extends BaseClass {}

void main() {
  final SubClass subClass = SubClass();
  print(subClass.value);
  subClass.helloWorld();
}