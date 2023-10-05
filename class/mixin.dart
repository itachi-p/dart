// mixin: 変数ではなく、定数をフィールドに持つ特殊なクラス
// mixinは、クラスの継承を使わずにクラスの機能を追加する方法
// コンストラクタや未定義のメソッドを持つことはできない
// 変数を持つことはできるが、変更可能な変数を持たせたくない場合が多い

// mixinの定義
mixin HelloMixin {
  // mixinの定数はconstだけでは定義できず、static constで定義する必要がある
  // クラス名.定数名でアクセス可能、変更不可(こちらがmixin本来の使い方)
  static const helloMsg = 'Hello';
  void hello() => print(helloMsg);
}

mixin goodbyeMixin {
  // static constの代わりにfinalを使うことでインスタンス変数のようにも扱える
  // mixinの存在意義としては、変更可能なインスタンス変数を持たせたくない場合が多い
  // なのでstatic constか、最低限finalで変更不可にすることが推奨される
  final String goodbyMsg = 'Goodbye';
  void goodbye() => print(goodbyMsg);
}

class Person with HelloMixin, goodbyeMixin {
  String name;
  Person(this.name);

  void greeting() {
    hello();
    print("私の名前は$nameです。");
    goodbye();
  }
}

void main() {
  final Person person = Person('Alice');
  person.greeting();
  // Mixinの定数にアクセスする場合は、クラス名.定数名でアクセス可能
  print(HelloMixin.helloMsg);
  print(person.goodbyMsg); // finalで定義した場合、このようにもアクセス可能
}