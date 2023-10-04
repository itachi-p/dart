// while: 条件式がtrueの間、繰り返し処理を行う
// do-while: while文と異なり、処理ブロックが必ず1回は実行される

import 'dart:io';

void main() {
  String password;
  int count = 0;
  const correctPassword = 'password';

  do {
    print('パスワードを入力してください');
    // 標準入力からパスワードを取得
    password = stdin.readLineSync()!;

    if (password == correctPassword) {
      print('ログインしました');
      break;
    } else {
      print('パスワードが間違っています');
    }
    count++;
    // 3回間違えたら終了
    if (count == 3) {
      print('ログインできませんでした');
      break;
    }
  } while (password != correctPassword && count < 3);
}
