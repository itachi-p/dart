// enum: 共通点のある定数を列挙型として定義できる
// switch: enumを使った条件分岐
// メリットは、switch文のcaseに抜け漏れがないこと

enum Season {
  spring,
  summer,
  autumn,
  winter,
}

void main() {
  Season season = Season.spring;

  switch (season) {
    case Season.spring:
      print('It\'s spring!');
      break;
    case Season.summer:
      print('It\'s summer!');
      break;
    case Season.autumn:
      print('It\'s autumn!');
      break;
    case Season.winter:
      print('It\'s winter!');
      break;
    // enumを使う場合、defaultは不要
  }
}