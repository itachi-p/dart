// 静的フィールド(クラス変数)
// static修飾子を付けない変数は全てインスタンス変数となる

class Person {
  // インスタンスが生成された数を保持するクラス変数
  /* 変数名の先頭を_にすることで、クラス内でのみアクセス可能なプライベート変数となる
  ここでは必ずしもプライベート変数にする必要はないが、
  クラス内でのみ使用する変数はプライベート変数にすることが推奨されている */
  static int _counter = 0;

  String name;
  int age;

  // 何番目のインスタンスかを保持するインスタンス変数
  late int id; // 初期化子(コンストラクタ)で値を代入するため、late修飾子を付ける

  // コンストラクタ(初期化子)
  Person(this.name, this.age) {
    // 元のコードは下記のように書かれていたが、別々にインクリメントする意味は無さそう
    // id = _counter + 1;
    // _counter++;
    _counter++;
    id = _counter;
  }

  void greet() {
    print('Hello, I\'m $name. $age years old.');
  }
}

void main() {
  // インスタンスが無くてもクラス変数にはアクセスできる
  print("counter: ${Person._counter}");
  // インスタンスを複数生成
  final Person person1 = Person('Alice', 20);
  print("counter: ${Person._counter}, id: ${person1.id}");
  final Person person2 = Person('Bob', 30);
  print("counter: ${Person._counter}, id: ${person2.id}");
  final Person person3 = Person('Charlie', 40);
  print("counter: ${Person._counter}, id: ${person3.id}");
}
