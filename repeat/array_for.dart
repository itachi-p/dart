// 配列を使用した繰り返し処理
void main() {
  List<String> fruits = ['apple', 'banana', 'orange'];

  // 配列の要素を順番に取り出す
  for (final String fruit in fruits) {
    print(fruit);
  }

  // indexを使用する場合
  for (int i = 0; i < fruits.length; i++) {
    print("$i : ${fruits[i]}");
  }
}