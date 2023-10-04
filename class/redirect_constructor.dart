// 名前付きコンストラクタの煩雑さを解消するために、
// 元のコンストラクタを呼び出すリダイレクトコンストラクタを定義できる。

class Person {
  String name;
  int age;

  // 通常のコンストラクタ
  Person(this.name, this.age);
  // リダイレクトコンストラクタ
  Person.fromJson(Map<String, dynamic> json)
      : this(json['name'], json['age']); // 通常のコンストラクタを呼び出す;

  void greet() {
    print('Hello, I\'m $name. $age years old.');
  }
}

// 以下は名前付きコンストラクタを使用した場合と同じ
void main() {
  final Person person = Person('Taro', 20);
  person.greet();

  final Person alice = Person.fromJson({
    'name': 'Alice',
    'age': 16,
    });
  alice.greet();
}
