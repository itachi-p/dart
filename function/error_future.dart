// 例外が発生し得る非同期処理の実行

Future<int> asyncFunction() async {
  // 例外が発生する可能性のある非同期処理
  await Future.delayed(Duration(seconds: 2));
  return 10 ~/ 0;
}

void main() async {
  print("awaitの場合の例外処理");
  try {
    // エラーが発生する非同期関数を呼び出す
    await asyncFunction();
  } catch (e) {
    // 例外が発生した場合の処理
    print("例外が発生しました: $e");
  } finally {
    // finally節は例外の有無に関わらず実行される
    print("finally節が実行されました");
  }
  print("プログラムを終了します\n");

  // thenメソッドを使った場合の例外処理(簡略化した書き方)
  print("thenの場合の例外処理");
  asyncFunction()
      .then((value) => print("10を0で割った値: $value")) // 到達しない
      // try-catch構文に相当する処理
      .catchError((error) => print("例外が発生しました: $error"))
      // finally節に相当する処理
      .whenComplete(() => print("最終処理が実行されました"))
      .then((value) => print("プログラムを終了します"));
  
  print("(x)プログラムが終了…しました?"); // この行は非同期処理が終わる前に実行される
}
