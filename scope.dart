//global declaration
const pi = 3.14;
int radius = 5;

//function scope
void main() {
  int radius = 15;
  print("Function scope:");
  print("Circumference of the circle is ${2 * pi * radius} units");
}

//global scope
void main() {
  print("Global scope:");
  print("Area of circle is ${pi * radius * radius} square units");
}

//lexical scope
void main() {
  print("Lexical scope:");
  String message = ("I am main function");
  void out() {
    String message = ("I am outer function");
    print(message);
  }

  out();
  void inner() {
    String message = ("I am inner function");
    print(message);
  }

  inner();
  print(message);
}
