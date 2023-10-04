// Map型: いわゆる連想配列(key-value)

void main() {
  Map<String, int> ages = {
    'Alice': 16,
    'White Rabbit': 27,
    'Mad Hatter': 35,
  };

  ages['Queen of Hearts'] = 55;
  ages['Cheshire Cat'] = 1000;

  print(ages);

  // Mapのキーと値の組み合わせを1つずつ取得する
  ages.forEach((key, value) {
    print('$key: $value');
  });

  // Mapのキーを指定して値を取り出す
  int aliceAge = ages['Alice'] as int; // 型の明示が必要
  print('\nAlice is $aliceAge years old.');

  // Mapのキーを指定して値を削除する
  ages.remove('Queen of Hearts');
  // Mapのキーの一覧と値の一覧を表示する
  print(ages.keys);
  print(ages.values);

  // Mapのキー（Iterable型）をList型に変換して取得する
  List<String> keyList = ages.keys.toList();
  print("キーのリスト: $keyList");

  // Mapの値（Iterable型）をList型に変換して取得する
  List<int> valueList = ages.values.toList();
  print("値のリスト: $valueList");

  // Mapのキーと値の組み合わせをList型に変換して取得する
  // List<MapEntry<String, int>> entryList = ages.entries.toList();
  // print("キーと値の組み合わせのリスト:\n $entryList\n");

  // 要素数を取得する
  print("要素数: ${ages.length}");

  // Mapのキーが存在するかどうかを判定する
  bool isContains = ages.containsKey('Mad Hatter');
  print("Is 'Mad Hatter' contains?: $isContains");

  // Mapの値が存在するかどうかを判定する
  isContains = ages.containsValue(27);
  print("Is '27' contains?: $isContains\n");

  // Mapの要素を全て削除する
  ages.clear();
  print("Is ages empty?: ${ages.isEmpty}");
  print(ages);
}