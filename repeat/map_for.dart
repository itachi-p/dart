// map: Iterable型を使った繰り返し処理
// 実際には、Iterable型の繰り返し処理はfor文を使って行うことは殆ど無い

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];

  // map()を使った繰り返し処理
  List<int> doubledNumbers = numbers
    .map((number) => number * 2)
    .toList();
  print(doubledNumbers); // [2, 4, 6, 8, 10]
}
