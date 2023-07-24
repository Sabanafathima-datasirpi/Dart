class Car {
  final String name;
  final String color;
//Constant constructor
  const Car(this.name, this.color);

  void carDetail() {
    print("The car name is $name");
    print("The car color is $color");
  }
}

void main() {
  const Car CarDetails = Car("Ford", "white");
  CarDetails.carDetail();
}
