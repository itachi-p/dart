// 抽象クラス: 継承して使われることを前提としたクラス
// サブクラスにメソッドの中身の実装(implement)を強制するために使われる
// 抽象クラスの中で中身の実装も可能　※インターフェースとの違い
// 抽象クラスそのものはインスタンス化できない
// 抽象クラスとインターフェースの違いは少し複雑(言語によっても違う)
// Dart言語では、抽象クラスはインターフェースとしても機能する
// 「実装=implement、継承=inherite」の用語が混在するのでややこしい
// 抽象クラスは「継承(extends)」して使われることを前提としたクラス
// サブクラスにメソッドの中身の実装(implement)を強制するために使われる
// 対して、インターフェースは「実装(implements)」して使われることを前提としたクラス
// インターフェースの定義について詳しくはインターフェースクラスで解説する

abstract class Animal {
  // フィールドの定義も可能
  late String name; // 今回は使わない

  // 具体的な処理は実装しない抽象メソッド
  void walk();

  // ゲッターを抽象メソッドとして定義することも可能
  // また、ゲッターは必ずしもprivate変数を返す必要はない
  String get animalType;

  // 中身を実装した通常メソッドの定義も可能
  void run() {
    print('走る');
  }
}

// 抽象クラスを継承したサブクラス
// 親クラスの抽象メソッドを実装(implement)しないとエラーになる
// 実際の実装には@overrideアノテーションを付ける
class Lion extends Animal {
  @override
  // 親クラスのprivateやpublicフィールドではなく単に文字列を返しても良い
  void walk() => print('獲物を探して歩く');

  @override
  String get animalType => 'ライオン';
}

class Elephant extends Animal {
  // @overrideアノテーションは省略も可能
  void walk() => print('大きな足音を立てて歩く');
  @override
  String get animalType => '象';
}

class Penguin extends Animal {
  void walk() => print('よちよち歩く');
  
  String get animalType => 'ペンギン';
  // 抽象クラスで定義した通常メソッドもオーバーライド可能
  @override
  void run() {
    print('てちてちと走る');
  }
}

void main() {
  // 抽象クラスはインスタンス化できない
  // final animal = Animal();
  // animal.walk();

  final Lion lion = Lion();
  lion.walk();
  print("動物タイプ: ${lion.animalType}");
  lion.run();

  final elephant = Elephant();
  elephant.walk();
  print("動物タイプ: ${elephant.animalType}");
  elephant.run();

  final penguin = Penguin();
  penguin.walk();
  print("動物タイプ: ${penguin.animalType}");
  penguin.run();
}
