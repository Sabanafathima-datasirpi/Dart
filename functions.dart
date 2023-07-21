//function call
void main() {
  oddOrEven(5);
  info("Sabana", "Tirunelveli");
  message();
  names("Sabana", "Prabha");
  details("Riyas");
  data("Fathima", city: "Tuticorin");
}

//functions with arguments(Required parameters)
//oddOrEven(5)
void oddOrEven(int number) {
  print("Functions with arguments:");
  if (number % 2 == 0) {
    print("${number} is even");
  } else {
    print("${number} is odd");
  }
}

//info("Sabana", "Tirunelveli")
void info(String name, String city) {
  print("${name} from ${city}");
}

//functions without arguments
void message() {
  print("Functions without arguments:");
  print("Welcome to Datasirpi");
}

//optional positional parameter
//names("Sabana", "Prabha")
void names(String name1, name2, [name3]) {
  print("Optional positional parameter:");
  print("Name:${name1}");
  print("Nmae2:${name2}");
  print("Name3:${name3}");
}

//optional named parameters
//details("Riyas")
void details(String name, {city = "Tirunelveli", int phNo = 9723878332}) {
  print("Optional named parameter:");
  print("Name:${name}");
  print("City:${city}");
  print("Phone:${phNo}");
}

//optional default parameters
//data("Fathima", city: "Tuticorin")
void data(String name, {city = "Tirunelveli"}) {
  print("Optional default parameter:");
  print("Hello, I am ${name} and I am from ${city}");
}
