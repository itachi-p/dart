// インターフェース
// 全てのメソッドが抽象メソッドである抽象クラス
// インターフェースは抽象クラスと同じく、インスタンス化できない
// インターフェースは、extendsではなくimplementsキーワードを使って実装する
// インターフェースは、抽象クラスと違い、複数のインターフェースを実装できる
// インターフェースは、抽象クラスと違い、親クラスを持つことができない
// インターフェースは、全ての抽象メソッドのoverrideを強制する
// メンバ変数やコンストラクタの定義も可能だが、抽象クラスの役割と被るので使わない

// インターフェースはインターフェースを継承できる
abstract class RunnableInterface extends WalkableInterface {
  void run();
}

// 独立したインターフェースでなく、RunnableInterfaceに継承させることも可能
// 複数implementsするより便利な場合もある（オブジェクト指向の設計による）
abstract class WalkableInterface {
  void walk();
}

//WalkableInterfaceはRunnableInterfaceが継承しているのでimplements不要
class Human implements RunnableInterface {
  @override
  void run() => print('とっとこ走る');
  @override
  void walk() => print('てけてけ歩く');
}

class Dog implements RunnableInterface {
  @override
  void run() => print('四本足でたったか駆け抜ける');
  void walk() => print('四本足ですたすた歩く');
}

// RunnableInterfaceとWalkableInterfaceの両方をimplementsしてもいい
class Robot implements RunnableInterface, WalkableInterface {
  //@override // 省略可能
  void run() => print('ガッチャンガッチャン走る');
  void walk() => print('ウィンウィン歩く');
}

void main() {
  final Human human = Human();
  final Dog dog = Dog();
  final robot = Robot(); // 型推論でRobot型として扱われるので型は省略可能

  // 同じインターフェースを実装したクラスは、インターフェース型の変数に代入できる
  final List<RunnableInterface> runners = [human, dog, robot];
  // これにより繰り返しを避け(DRY原則)、コードをスッキリさせることができる
  for (final runner in runners) {
    //RunnerInterfaceがWalkableInterfaceを継承しているのでwalk()も使える
    runner.walk();
    runner.run();
  }
}
