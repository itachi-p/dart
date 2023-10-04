// forEach(): 配列を使ったfor文よりも簡潔に書ける

void main() {
  List<String> fruits = ['apple', 'banana', 'orange'];

  fruits.forEach((fruit) {
    print(fruit);
  });

  // indexを使用する場合
  int i = 0;
  fruits.forEach((fruit) {
    print("$i : $fruit");
    i++;
  });
}