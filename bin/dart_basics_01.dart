void main() {
  // print('Hello World');
  // print('I like Larning');
  String firstName = 'Sayed';
  String lastName = "Noman";
  int age = 21;
  double height = 1.52;
  bool likesDart = true;
  print(firstName);
  print(lastName);
  print(age);
  print(height);
  print(likesDart);
  print("My Name is " +
      firstName +
      " " +
      lastName +
      "and I'm " +
      age.toString() +
      " years Old, and my height is " +
      height.toString()); //String Concatination
  print(
      "My name is $firstName $lastName. I'm $age years old."); // String Interpulation

  double temp = 30;
  print("Temparature is ${temp}C");

  int value = 3;
  String pizza = "pizza";
  String pasta = "pasta";
  print("$value plus $value makes ${value + value}");
  print("I like $pizza and $pasta");

  // string representation
  print("Today I'm Feeling Good");
  print('Today I\'m Felling Good '); //string escaping
  print('\\');
  print('\$');
  print('c:\\windows\\system32');
  print(r'C:\windows\system32');
  int a = 10;
  print('$a'); // 10
  print('\$a'); // \$a
  print('\$$a'); // $10
  //Multiline String
  print('This is a short sentence. \n'
      'This is a longer sentence, I dare say. \n'
      'This is a even longer sentence, whic will not fit in a single line');
  print("""This is a short sentence.
  This is a longer sentence, I dare say.
  This is a even longer sentence, whic will not fit in a single line.
  """);
  String multiLineString = """This is a short sentence.
  This is a longer sentence, I dare say.
  This is a even longer sentence, whic will not fit in a single line.
  """;
  print(multiLineString);

  //Common operation on string
  String tittle = "This is a Dart Repo";
  print(tittle.toUpperCase());
  print(tittle.toLowerCase());
  print('This is a Sentence'.toUpperCase());
  tittle = tittle.toUpperCase();
  print(tittle);

  String lovePizza = 'I love pizza';
  print(lovePizza.contains('pizza'));
  String lovePasta = lovePizza.replaceAll('pizza', 'pasta');
  print(lovePasta);
}
