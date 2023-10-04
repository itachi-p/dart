// Set型:重複NG、順序なし、要素の追加・削除・検索が高速
// ただし、Setは順序(index)がないので、要素の順番は保証されない
// Listと同様にIterableを実装しているので、for文で繰り返し処理が可能

void main() {
  Set<String> fruits = {'apple', 'banana', 'orange'};
  print("fruits0: $fruits");

  fruits.add('apple'); // 重複要素は無視される(エラーにはならない)
  fruits.add('grape');
  print("fruits1: $fruits");

  // 要素の削除
  fruits.remove('apple');
  // fruits.removeAt(0); // indexを指定する関数は存在しない
  print("fruits2: $fruits");

  // 要素の検索
  bool isContainsBanana = fruits.contains('banana');
  print("Contains banana?: $isContainsBanana");

  // 要素数
  print(fruits.length.toString() + " fruits in the set");

  // 要素のクリア
  // fruits.clear(); // Listと同じ

  // 複数の要素を一度に削除可能（存在しない要素を指定してもエラーにならない）
  fruits.removeAll({'apple', 'banana', 'orange'});
  print("fruits: $fruits");
}
