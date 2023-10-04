// カプセル化: プライベート変数、セッターとゲッター

class Person {
  // プライベート変数
  String _name;
  int _age;

  // コンストラクタ
  Person(this._name, this._age);
  // リダイレクトコンストラクタ
  Person.fromJson(Map<String, dynamic> json)
      : this(json['name'], json['age']);
      
  // _nameのセッター
  void setName(String name) => _name = name;
  // _nameのゲッター
  String getName() => _name;

  // _ageのセッター
  void setAge(int age) {
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
  int getAge() => _age;

  void greeting() {
    print("Hello, I'm $_name. $_age years old.");
  }
}

void main() {
  final Person person = Person("Tom", 20);
  person.setName("Masamune");
  person.setAge(35);
  person.greeting();

  final Person alice = Person.fromJson({
    'name': 'Alice',
    'age': 16,
  });
  alice.setName("Alicegrandmama");
  alice.setAge(180);
  alice.greeting();
  
  alice.setAge(-1);
}