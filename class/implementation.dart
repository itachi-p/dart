// インターフェース
// 全てのメソッドが抽象メソッドである抽象クラス
// インターフェースは抽象クラスと同じく、インスタンス化できない
// インターフェースは、extendsではなくimplementsキーワードを使って実装する
// インターフェースは、抽象クラスと違い、複数のインターフェースを実装できる
// インターフェースは、抽象クラスと違い、親クラスを持つことができない
// インターフェースは、全ての抽象メソッドのoverrideを強制する
// メンバ変数やコンストラクタの定義も可能だが、抽象クラスの役割と被るので使わない

// インターフェースの定義
abstract class RunnableInterface {
  void run();
}

// インターフェースは複数implementsできる
abstract class WalkableInterface {
  void walk();
}

class Human implements RunnableInterface, WalkableInterface {
  @override
  void run() => print('人が走る');
  @override
  void walk() => print('人が歩く');
}

class Dog implements RunnableInterface, WalkableInterface {
  @override
  void run() => print('四足歩行で駆け抜ける');
  void walk() => print('四足歩行で歩く');
}

class Robot implements RunnableInterface, WalkableInterface {
  //@override // 省略可能
  void run() => print('油を消費しながらガッチャンガッチャン走る');
  void walk() => print('油を消費しながらウィンウィン歩く');
}

void main() {
  final Human human = Human();
  final Dog dog = Dog();
  final robot = Robot(); // 型推論でRobot型として扱われるので省略可能

  human.walk();
  dog.walk();
  robot.walk();

  // 同じインターフェースを実装したクラスは、インターフェース型として扱える
  final List<RunnableInterface> runners = [human, dog, robot];
  for (final runner in runners) {
    runner.run();
  }
}
