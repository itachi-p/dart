// 非同期処理: async/await初歩の初歩

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
  await asyncFunc1();
  await asyncFunc2();
  print("プログラムを終了します");
}
