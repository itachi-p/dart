// ファクトリーコンストラクタ
// 自動的にインスタンスを生成するコンストラクタ
// 条件分岐を外側に書くことなくインスタンスの型を動的に変えることができる

class Car {
  // TODO:null安全性及び可読性のために初期値を設定（不要かも?）
  String country = "";
  
  // 通常のコンストラクタ
  Car(this.country);

  // ファクトリーコンストラクタ
  factory Car.fromCountry(String country) {
    switch (country) {
      case "Japan":
        return JapaneseCar(country);
      case "USA":
        return AmericanCar(country);
      default:
        return Car(country);
    }
  }
}

class JapaneseCar extends Car {
  JapaneseCar(String country) : super(country);
}

class AmericanCar extends Car {
  AmericanCar(String country) : super(country);
}

void main() {
  // ファクトリーコンストラクタを呼び出し、インスタンスを生成する
  // メリット: main関数内で分岐処理を書かずに済みコードがスッキリする
  // コンストラクタに渡す引数によってインスタンスの型を動的に変えることができる
  final car1 = Car.fromCountry("Japan");
  print("型: ${car1.runtimeType}");
  final car2 = Car.fromCountry("USA");
  print("型: ${car2.runtimeType}");
  final car3 = Car.fromCountry("Germany");
  print("型: ${car3.runtimeType}");
  final car4 = Car.fromCountry("");
  print("型: ${car4.runtimeType}");
}
