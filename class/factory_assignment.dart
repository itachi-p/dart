// Objective: Factory Assignment
// 受け取る値によって、生成するインスタンスの型を変える

class Car {
  String country;

  Car(this.country);
}

class JapaneseCar extends Car {
  JapaneseCar(String country) : super(country);
}

class AmericanCar extends Car {
  AmericanCar(String country) : super(country);
}

void main() {
  String country = "United States of America";

  // Car型の変数carはCarとそのサブクラスのインスタンスを代入できる
  late Car car;

  // countryの値によって、生成するインスタンスの型を変える
  switch (country) {
    case "Japan":
      car = JapaneseCar(country);
      break;
    case "USA":
      car = AmericanCar(country);
      break;
    default:
      car = Car(country);
      break; // 元のコードにはあるが、defaultにbreakは不要では？
  }

  // 生成されたインスタンスの型を確認する
  print(car.runtimeType);
}
