// 基本的な関数の定義
// int sum(int a, int b) {
//   return a + b;
// }

// 上記の省略記法（アロー構文）
int sum(int a, int b) => a + b;

// 引数を受け取らず、戻り値も返さない関数のアロー構文
void greeting() => print('Hello, World!');

// 名前付きの引数を受け取る関数（デフォルト値の設定も可能）
int namedSum({required int a, int b = 5}) => a + b;

// 名前付きと非名前付きの引数を受け取る関数
int basicAndNamedSum(int a, {required int b, int c = 8}) => a + b + c;

main() {
  print(sum(1, 2));
  greeting();
  // bを指定しなければデフォルト値の5が入る
  print(namedSum(a: 3));
  // bを指定した場合、デフォルト値の5ではなく指定した値が入る
  print(namedSum(a: 3, b: 10));

  // 非名前付きの引数は、名前付きの引数よりも前に記述する必要がある
  print(basicAndNamedSum(3, b: 5)); // cはデフォルト値の8が入る
  // cを指定した場合、デフォルト値の8ではなく指定した値が入る
  print(basicAndNamedSum(13, b: 21, c: 34));
}