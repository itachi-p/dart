// 静的メソッド(クラスメソッド)
// static修飾子を付けないメソッドは全てインスタンスメソッドとなる

class Person {
  // インスタンスが生成された数を保持するクラス変数
  static int _counter = 0; // private

  String name;
  int age;

  // 何番目のインスタンスかを保持するインスタンス変数
  late int id; // 初期化子で値を代入するため、late修飾子を付ける

  // 初期化子(コンストラクタ)
  Person(this.name, this.age) {
    _counter++;
    id = counter;
  }

  // クラス変数にアクセスするクラスメソッド(インスタンス変数にはアクセスできない)
  static int getCounter() => _counter;
  // 上記を簡略化した書き方(ここでのcounterは変数名ではなく、getメソッド名)
  // 変数名と同じ名前だとエラーになる(private変数にしなかった場合)
  static int get counter => _counter;
}

void main() {
  print("counter: ${Person.getCounter()}");
  print("counter: ${Person.counter}"); // 上記の簡略版

  // インスタンスを複数生成
  final Person person1 = Person('Alice', 20);
  print("counter: ${Person.getCounter()}, id: ${person1.id}");
  print("counter: ${Person.counter}, id: ${person1.id}"); // 上記の簡略版

  final Person person2 = Person('Bob', 30);
  print("counter: ${Person.getCounter()}, id: ${person2.id}");
  print("counter: ${Person.counter}, id: ${person2.id}");
}
