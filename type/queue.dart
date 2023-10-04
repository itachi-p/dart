// Queue型:先頭(両端)の要素のみ操作可能なコレクション
// 両端ではない要素にアクセスするには、Iteratorを使用する
// Queueは、Listと同様に要素の順序を保持しており、似たような関数を持っている

// Queue型のインスタンスを作成するには、Queueクラスのコンストラクタを使用する
import 'dart:collection';

void main() {
  // Queue型のインスタンスを作成する
  Queue<String> colors = Queue();

  colors.addAll(['red', 'blue', 'yellow', 'green']);
  print("colors0: $colors");

  // 先頭の要素を取得すると同時に削除される
  print(colors.removeFirst()); // red
  print(colors.removeFirst()); // blue
  print("colors1: $colors"); // 先頭の要素が詰められている

  // 末尾の要素を取得すると同時に削除される
  print(colors.removeLast()); // green
  print("colors2: $colors"); // 末尾の要素が削除されている

  colors.add('black');
  colors.add('white');
  // 先頭に要素を追加する
  colors.addFirst('orange');
  print("colors3: $colors");

  bool isContains = colors.contains('black');
  print("Is black contains?: $isContains\n");
  // colors.IndexOf('black'); // IndexOf()関数は存在しない

  colors.clear();
  print("Is colors empty?: ${colors.isEmpty}");
  print("colors4: $colors");
}
