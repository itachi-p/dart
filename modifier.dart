void main() {
  //※修飾子のうち、varは推奨されていない（型の安全性が低いため）

  //const:定数（リテラル値）を定義する際に使用する
  const String message = 'Hello, World!';
  print(message);

  //final:constに似ているが、実行時に値を決定することができる
  final bool isMessageEmpty = message.isEmpty;
  print('Is message empty?: ' + isMessageEmpty.toString());

  //late:遅延初期化(Dart 2.12以降)
  //宣言だけして後で初期化することができる ※初期化前に参照するとエラーになる
  //使い所は、クラスのコンストラクタで初期化する場合やDBから値を取得する非同期処理など
  late String lateMessage;
  //本来はコンストラクタや非同期処理で初期化するが、ここでは普通に代入している
  lateMessage = 'Hello, World!';
  print(lateMessage);
}
