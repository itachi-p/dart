void main() {
  // 条件分岐
  int num1 = 1;
  if (num1 == 1) {
    print('num1 is 1');
  } else if (num1 == 2) {
    print('num1 is 2');
  } else {
    print('num1 is not 1 or 2');
  }

  // 三項演算子
  int num2 = 2;
  String result = num2 == 1 ? 'num2 is 1' : 'num2 is not 1';
  print(result);

  // switch文
  int num3 = 3;
  switch (num3) {
    case 1:
      print('num3 is 1');
      break; // breakを忘れると次のcaseに進んでしまう
    case 2:
      print('num3 is 2');
      break;
    default:
      print('num3 is not 1 or 2');
  }
}