// 簡略化されたセッターとゲッター:setとgetキーワード(標準メソッド)
// Dartでは、セッターとゲッターを定義するための特別な構文が用意されている

class Person {
  String _name;
  int _age;

  Person(this._name, this._age);
  // リダイレクトコンストラクタ
  Person.fromJson(Map<String, dynamic> json)
      : this(json['name'], json['age']);
      
  // _nameのセッター
  set name(String name) => _name = name;
  // _nameのゲッター
  String get name => _name;

  // _ageのセッター
  set age(int age) {
    // 0歳未満の場合は例外を投げる
    if (age < 0) {
      throw ArgumentError('age must be greater than 0.');
    }
    // 年齢が150より小さければ年齢を設定する
    if (age < 150) {
      _age = age;
    } else {
      print("相応しい年齢ではありません");
    }
  }
  // _ageのゲッター
  int get age => _age;

  void greeting() {
    print("Hello, I'm $_name. $_age years old.");
  }
}

void main() {
  final Person person = Person("Tom", 20);
  // まるでpublic変数のように代入できる
  person.name = "Masamune";
  person.age = 35;
  person.greeting();

  final Person alice = Person.fromJson({
    'name': 'Alice',
    'age': 16,
  });
  // 同じくまるでpublic変数のように代入できる
  alice.name = "Alicegrandmama";
  alice.age = 180;
  alice.greeting();
  
  alice.age = -1;
}