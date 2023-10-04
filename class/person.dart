// オブジェクト指向の基本

class Person {
  // プロパティ(フィールド)
  String name;
  int age;
  String country;

  // コンストラクタ: インスタンスを生成する際に呼び出される特別なメソッド
  // 3つ目の引数が指定されなかった場合は'Japan'がデフォルト値として使用される
  Person(this.name, this.age, {this.country = 'Japan'});

  // メソッド(関数)
  void sayHello() {
    print("Hello, I'm $name. $age years old. I'm from $country.");
  }
}

void main() {
  // インスタンスの生成
  final Person person = Person('Taro', 20);
  // メソッドの呼び出し
  person.sayHello();
  // プロパティへのアクセス
  print(person.name);
  print(person.country); // 省略したのでデフォルト値が出力される

  // 別のインスタンスの生成
  // Person型であることは明示しなくても、型推論によりPerson型として扱われる
  final person2 = Person('Bob', 18, country: 'America');
  person2.sayHello();
  print(person2.country);
}