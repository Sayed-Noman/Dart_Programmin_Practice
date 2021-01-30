void main() {
  //Single Line Comment for todo implemantation
  /// Singline  comment added to doccumentation section
  /* Multi
   --------line 
   ---------comments 
  */

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

  // Type conversion
  int myAge = 36;
  String ageString = myAge.toString();
  double myHeight = 1.52;
  String heightString = myHeight.toStringAsFixed(1);
  print(ageString);
  print(heightString);

  String ratingString = '4.5';
  double rating = double.parse(ratingString);
  print(rating);
  int x = 10;
  double y = x.toDouble();
  print(y);
  int w = 40.6.round();
  print(w);

  //Arithmatic Operations
  print(5 + 2);
  print(5 - 3);
  print(5 / 2);
  print(5 ~/ 2);
  print(5 % 2);
  //Augmented Assignment operator
  int z = 5;
  z += 2;
  print(z);
  double q = 5;
  q /= 2;
  print(q);
  //operatorprecedence
  print(10 - 2 * 3);
  print((10 - 2) * 3);

  double tempFareheit = 86;
  double tempCelcius = (tempFareheit - 32) / 1.8;
  print('${tempFareheit}F =${tempCelcius.toStringAsFixed(1)}C');

  //increment and decrement operator
  int tempX = 1;
  //int tempY = tempX++;
  int tempY = ++tempX;
  print('x: $tempX , y:$tempY');

  //Relational operator
  print(5 == 2);
  print(5 != 2);
  print(5 >= 2);
  print(5 > 2);
  print(5 < 2);
  print(5 >= 2.5);
  print(5 < 2 || 5 < 7);
  print(5 < 2 && 5 < 7);
  print(!(5 < 2));

  String email = 'Sayed.noman23@gmail.com';
  print(email.isNotEmpty && email.contains('@'));

  //Ternary Operator
  int ternaryAge = 36;
  String type = ternaryAge > 16 ? 'adult' : 'child';
  print(type);

  //Hex and Bitwise Operator
  int green = 0xFF00FF00;
  int num1 = 0xF0; //binary : 11110000
  int num2 = 0x0F; //binary : 00001111
  print(num1 | num2);
  print((num1 | num2).toRadixString(2)); //bitwise or
  print((num1 & num2).toRadixString(2)); //bitwise and
  print((num1 ^ num2).toRadixString(2)); //bitwise xor
  print((~num2).toRadixString(2)); //bitwise not
  num1 = 4;
  print((num1 >> 2).toRadixString(2)); //right shift
  print((num1 << 2).toRadixString(2)); //left shift
}
