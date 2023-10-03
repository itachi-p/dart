void main() {
  // Dartの変数名はlowerCamelCaseが推奨されている
  String helloWorldString = 'Hello, World!';
  // 定数はUPPER_SNAKE_CASEが推奨されている
  const int HELLO_DART = 2020;

  print(helloWorldString);
  print('It will be the first time since ' + HELLO_DART.toString() + ', Dart.');
}
