main() {
  const int a = 100;
  print(a);
  const int b = 0x64;
  print(b);
  //整数の割り算: ~/演算子(単に/だとdouble型小数点以下が出る)
  const int c = 100 ~/ 2;
  print(c);

  print(a.isEven); //偶数かどうか
  print(a.isOdd); //奇数かどうか

  //sign: 正負と0を判定
  const int d = -100;
  print(d.sign);
  const int e = 100;
  print(e.sign);
  const int f = 0;
  print(f.sign);

  //絶対値
  const int g = -123;
  print(g.abs());
}
