// 非同期処理2: thenを使った非同期処理の順番制御
// .then()を使うとソースコードの可読性が落ちる。極力awaitの使用を推奨

// 3秒待機する非同期関数
Future<void> asyncFunc1() async {
  print('非同期処理1を開始します');
  await Future.delayed(Duration(seconds: 3));
  print('非同期処理1が完了しました');
}

// 2秒待機する非同期関数
Future<void> asyncFunc2() async {
  print('非同期処理2を開始します');
  await Future.delayed(Duration(seconds: 2));
  print('非同期処理2が完了しました');
}

void main() async {
  print("プログラムを開始します");
  asyncFunc1()
    // asyncFunc1が完了したらasyncFunc2を実行する
    // then()の最初の()はasyncFunc1の戻り値を受け取るが、voidなので_で省略
    .then((_) => asyncFunc2())
    // asyncFunc2が完了したらプログラムを終了する
    .then((_) => print("プログラムを終了します"));
}
