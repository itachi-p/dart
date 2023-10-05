// ジェネリクス: 型パラメータ
// ジェネリクスを使うと、型をパラメータとして受け取ることができる
// ジェネリクスを使うことで、型安全になる

class Box<T> {
  T _item;
  Box(this._item);
  // _itemのgetterとsetterを定義
  set item(T item) => _item = item;
  T get item => _item;
}

void main() {
  // Tにint型を指定
  Box<int> intBox = Box<int>(0);
  intBox.item = 5;
  print(intBox.item);
  // わざと文字列を代入してみる
  // intBox.item = "hello"; // エラーになる

  // TにString型を指定
  Box<String> strBox = Box<String>("");
  strBox.item = "Hello, World!";
  print(strBox.item);
  // わざと数値を代入してみる
  // strBox.item = 5; // エラーになる
}