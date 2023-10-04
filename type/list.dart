// List型: 重複OK、順序(index)あり、変更可能

void main() {
  List<String> fruits = [];

  fruits.add('apple'); // 要素を末尾に追加
  fruits.add('banana');
  fruits.add('orange');
  print("fruits0: $fruits");

  print(fruits[0]);
  print(fruits.elementAt(1));

  fruits[2] = 'grape'; // 要素の変更(上書き代入)
  print("fruits1: $fruits");

  fruits.remove('apple');
  // fruits.removeAt(0);
  fruits.removeLast();
  print("fruits2: $fruits");

  fruits.insert(0, 'mango'); // add()と逆に先頭に追加
  fruits.insert(0, 'strawberry');
  fruits.add('mango'); // Listは要素の重複OK
  print("fruits3: $fruits");
  // fruits.remove('mango');  // 重複している場合、最初に見つかったものだけ削除

  // 重複要素をすべて削除　(残念ながら専用の関数は用意されてない)
  // 方法1:whileループでremove()を繰り返す
  // while (fruits.remove('mango')) {}

  // 方法2:removeWhere()を使う (無名関数を渡す)
  // fruits.removeWhere((item) => item == 'mango');
  // 条件文としてlength(文字の長さ)や様々な式を指定することが可能
  fruits.removeWhere((item) => item[0] == 'm'); // 先頭の文字がmの要素を削除
  print("fruits4: $fruits");

  fruits.add('Cherry');
  fruits.insert(2, 'Watermelon');
  print("fruits5: $fruits\n");

  // UNICODE順にソート(日本語の場合は想定外の並び順になりやすいので注意)
  fruits.sort();
  print("sort > fruits: $fruits");

  // 逆順にソート
  fruits.sort((a, b) => b.compareTo(a));
  print("reverse sort > fruits: $fruits\n");

  bool isContainsBanana = fruits.contains('banana');
  print("Contains banana?: $isContainsBanana");
  print("Index of 'banana': " + fruits.indexOf('banana').toString());
  print(fruits.length.toString() + " fruits in the list\n");

  fruits.clear();
  print("fruits: $fruits");
  bool isNotEmpty = fruits.isNotEmpty;
  print("Is not empty?: $isNotEmpty");
}
