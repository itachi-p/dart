// 例外処理

void main() {
  try {
    // 例外が発生する可能性のある処理
    int a = 10 ~/ 0; // zero division error
    print('a = $a');
  } catch (e) {
    // 例外が発生した場合の処理
    print('例外が発生しました: $e');
  } finally {
    // 例外の有無に関わらず実行される処理
    print('処理が完了しました');
  }

  // 特定の型の例外のみ処理し、それ以外の例外は再スローされる
  // onで指定した型(とそのサブクラス)の例外のみキャッチする
  try {
    // 例外を意図的にスローする
    throw UnsupportedError('例外をスローします');
  } on UnsupportedError catch (e) {
    // 例外が発生した場合の処理 (eオブジェクトに例外の情報が入っている)
    print('例外が発生しました: $e\n${e.stackTrace}');
  } finally {
    // 例外の有無に関わらず実行される処理
    print('処理が完了しました');
  }
}
