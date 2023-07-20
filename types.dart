main() {
  //integer type

  int num = 20;
  print("value: ${num}, type:${num.runtimeType}");

  //double

  double result = num / 50;
  print("The result is ${result} and the type is ${result.runtimeType}");

  //String concat

  String first = 'Sabana';
  String last = 'Fathima';
  print("${first} ${last}");

  //boolean type

  bool check = "five" == "5";
  print(check);

  //dynamic-can change values and type at runtime

  dynamic a;
  a = 20;
  print("value:${a},type:${a.runtimeType}");
  a = "20";
  print("value:${a},type:${a.runtimeType}");
  a = "Sabana";
  print("text:${a},type:${a.runtimeType}");

  //Fixed length list-adding value is not possible

  List<int> data = List.filled(5, 0, growable: false);
  data[0] = 2;
  data[1] = 3;
  data[2] = 4;
  data[3] = 5;

  print("The total values in the list are ${data}");

  //Growable list-values can be added

  List<String> str = List.filled(5, '', growable: true);
  str[0] = 'I';
  str[1] = 'am';
  str[2] = 'Sabana';
  str[3] = 'Fathima';
  str.add("Developer");
  str.insert(4, "Fullstack");
  print("The updated list is ${str}");
  print("The elements in the index 2 and 3 is ${str[2]} ${str[3]}");

  //Map-key-value pair

  var details = new Map();
  details["RegNo"] = 950061716343;
  details["Name"] = "Sabana";
  details["Department"] = "Computer Science";
  print("The details are ${details}");
  print("The value of Regno is ${details["RegNo"]}");

  //modified name
  details["Name"] = "Prabha";
  print("THe updated list is ${details}");

  //Runes type for symbol
  var smiley = '\u{1F604}';
  print(smiley);

  //runes property for string
  String info = "Dart";
  print(
      "The unicode of the string is ${info.runes}"); //returns unicode for every character in the string
  print(
      "The unicode of character in the index 0 is ${info.codeUnitAt(0)}"); //return unicode for the givrn index
}
