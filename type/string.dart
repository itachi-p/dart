void main () {
  const String str = "Hello, World!";
  print(str.length);
  final String str2 = str.substring(0, 5);
  print(str2);
  final String str3 = str.replaceAll("World", "Dart");
  print(str3);
  final String str4 = str.toUpperCase();
  print(str4);
  final String str5 = str.toLowerCase();
  print(str5);
  final bool isStartsWith = str.startsWith("Hello");
  print(isStartsWith);
  final bool isEndsWith = str3.endsWith("Dart!");
  print(isEndsWith);
  final String isEmpty = str.isEmpty ? "Empty" : "Not Empty";  
  print(isEmpty);
  final String isNotEmpty = str.isNotEmpty ? "Not Empty" : "Empty";
  print(isNotEmpty);
  // 繰り返し
  final String str6 = str * 3;
  print(str6);
  // 文字列の連結($を使った変数展開)
  final String str7 = "$str $str3";
  print(str7);
  // join
  final List<String> strList = ["Hello", "World", "Dart"];
  final String str8 = strList.join("+-+");
  print(str8);
}