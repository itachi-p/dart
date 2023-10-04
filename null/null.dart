// null値を許容する変数の扱い

void main() {
  // null許容変数を宣言（初期値はnullになる）
  String? nullableString;

  // nullかどうかを判定して出力
  checkNull(nullableString);

  // null許容変数に値を代入
  nullableString = 'Hello World';
  checkNull(nullableString);
}

// 今回のケースは処理不要だが、通常はエラーになる可能性があるので分岐する
void checkNull(String? nullableString) {
  // ??でnullだった場合は値を代入する(このケースでは無くてもnullと表示されるだけ)
  print(nullableString ?? 'nullです');
}
