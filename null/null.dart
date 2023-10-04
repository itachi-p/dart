// null値を許容する変数の扱い

/*
null値についての補足
Null-Safetyの導入(Dart2.12 2021年3月3日)により、
Dartはnull安全な言語になった。
（->さらに進化）
Dart3(2023年5月)では、100％NULL安全な言語になった。
従来のDartでは変数にnullを代入する運用を許可できたが、
Dart3ではそれが許されなくなる。（sound null safety）
これにより、変数定義における?や!(null可能性のチェック)が不要になる。
*/

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
