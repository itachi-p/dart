// 拡張: extension on <type> 

extension StringExtension on String {
  String capitalize() {
    // 文字列の先頭だけを大文字にする
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}

void main() {
  final String str = "hello world";
  print(str.capitalize());
}