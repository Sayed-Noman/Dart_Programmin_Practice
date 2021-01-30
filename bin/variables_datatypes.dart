void main() {
  ///Variables without Type declaration
  var stringVar = "This is a String Variable";
  var integerVar = 2021;
  var doubleVar = 3.77;

  print("String Variable = $stringVar");
  print("Integer Variable = $integerVar");
  print("Double Variable = $doubleVar");

  /// Varable with Explicit type system
  /* 
      String 
      Number (Integer and Doubles)
      Boolean
      Lists
      Maps
      .....
  */
  int year = 2021;
  double cgpa = 3.77;
  String name = "Sayed Abu Noman Siddik";

  print(year);
  print(cgpa);
  print(name);

  /* Integer and Double is a Subset of Number */
  num age = 21;
  print(age);
  num decimal = 21.5;
  print(decimal);

  /* Boolean : true or false */
  bool isTrue = true;
  bool isFalse = false;
  print(isTrue);
  print(isFalse);

  /*Constant and Final Keyword 
    const : compile-time check and declare once never be reassigned
    final : a constant variable that never changes
    dynamic: run time type checking variable
  
  */
  const pi = 3.1416;
  final int id = 1811655042;
  dynamic dynamicVar = 10;
  dynamicVar = true;
  print(pi);
  print(id);
  print(dynamicVar);

  /*  Concatination  */
  String myName = "Sayed";
  String university = "North South University";
  int semester = 10;
  print("Hey Listen:");
  print("$myName, is in $semester semester at $university");
  print("My Name in Upper Case: ${myName.toUpperCase()}");

  /* 
    * Dart is a statically typed languages- type checked at compiled time
    * Dart uses Type Inference Using var Keyword
    * final keyword used to read only variable
    * const keyword used for compile time constant
    * Best Practice const>final> var 
    * dynamic keword used to opt-out of type safety
  */
}
