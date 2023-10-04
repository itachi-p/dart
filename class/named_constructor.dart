// 名前付きコンストラクタ

class Person {
  String name;
  int age;

  // 通常のコンストラクタ
  Person(this.name, this.age);
  // 名前付きコンストラクタ
  Person.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age'];

  void greet() {
    print('Hello, I\'m $name. $age years old.');
  }
}

void main() {
  // 通常のコンストラクタを使用してインスタンスを生成
  final Person person = Person('Taro', 20);
  person.greet();

  // 名前付きコンストラクタを使用してインスタンスを生成
  final Person alice = Person.fromJson({
    'name': 'Alice',
    'age': 16,
    });
  alice.greet();
}
