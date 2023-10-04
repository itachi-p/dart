void main () {
  const double a = 11.5;
  print(a);

  //指数表記
  const double b = 1.15e1;
  print(b);

  //浮動小数点の割り算
  const double c = 11.5 / 2; // 整数のように~/演算子は不要
  print(c);

  //フィールド: 正負と0を判定
  const double d = -11.5;
  print(d.sign);
  const double e = 11.5;
  print(e.sign);
  const double f = 0;
  print(f.sign);

  //絶対値
  const double g = -123.45;
  print(g.abs());
  
  //四捨五入
  const double h = 123.45;
  print(h.round());
}