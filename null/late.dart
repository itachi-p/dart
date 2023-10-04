// late修飾子を使って、初期化を遅延させる
// 非同期処理（DBアクセスなど）で変数に値をセットする場合に使う
// 型名? 変数名 (= null); を多用するより late 型名 変数名; を使う方がスマート

void main() async {
  // late修飾子を使って、初期化を遅延させる
  late String lateString;

  //下記は初期化されていないためエラーになる
  // print(lateString);

  // 非同期処理で値を取得する
  lateString = await fetchData();

  print(lateString);
}

Future<String> fetchData() async {
  // 非同期で値を取得する処理
  await Future.delayed(Duration(seconds: 1));
  return 'Hello, World!';
}
