void main(List<String> args) {
  const person = {'name': 'Noman'};
  //In this example  it's workabele
  if (person['age'] == null) {
    print('Age is missing');
  } else {
    print(person['age']);
  }
  //but when we can gurantee that a value is never null then we don't need to check
  //Null Safety can decide at compile time if a varibale can be null or not
  //Null Safety makes more productive code
  //Nullable and No-Nullable Variable

  //  int? nullVariable;
  // int nonNullable;
  /*
    /// code written in without-null safety package
    /// this code will generate run-time error because we can't use + operator if one operand is null
  int a;
  int b=2;
  print(a+b); 

  */

  /*
    ///code written in with null safety package
        /// this code will generate compile-time error because we can't use + operator if one operand is null

  int a?;
  int b=2;
  print(a+b); 

    ///How to solve? Flow Analysis:promotion
    ///Flow Analysis is a way to promote nullable variables to non-nullable variable
  int a?;
  int b=2;
  if(a==null){
    print('a is null');
  }else{
    print(a+b);
  }
  
  */

  //Definite Assignment
  /*
    ///written in null-safety
    ///this code generate compile-time error becuasue sign is null
    ///to remove this we have to use definite assignemnt
  int x = 10;
  int sign;
  print(sign);
  
  */
  int x = 10;
  int sign; //int sign = x>=0 ? 1 : -1;
  if (x >= 0) {
    sign = 1;
  } else {
    sign = -1;
  }
  print(sign);

  //Assertion Operator(!): assign nullable value to a non-nullable variable
  /*
    ///written in null-safety
    /// if we are sure that a nullable variable will always have a non-nullable value
    it's safe to assign it to a non-nullable variable with ! operator
    /// if programmer is wrong than we will get run-time exception
    
  int y = 42; //non nullable variable
  int? maybeValue; //nullable variable
  if (x > 0) {
    maybeValue = x;
  }
  int value = maybeValue!; // using ! operator to assign nullable value to a non-nullable variable
  print(value); //output=42

  // If-null operator: to avoid run-time exception

  int y = -5; 
  int? maybeValue; 
  if (x > 0) {
    maybeValue = x;
  }
  int value = maybeValue === null ? 0 : maybeValue;
  print(value); //output=0

  */
  //if-null operator should be used when user have a default value shortcut way

  /*

  int y = -5; 
  int? maybeValue; 
  if (x > 0) {
    maybeValue = x;
  }
  int value = maybeValue ?? 0;
  print(value); //output=0

  */
  // Augmented assignment if-null operator'
  /*
  int y = -5; 
  int? maybeValue; 
  if (x > 0) {
    maybeValue = x;
  }
  maybeValue ??=0;
  int value = maybeValue;
  print(value); //output=0

  */
  //Trype inference in null-safety

  /*
  const y = -5; 
  int? maybeValue; 
  if (x > 0) {
    maybeValue = x;
  }
  maybeValue ??=0;
  final value = maybeValue;
  print(value); //output=0
  
  */

  //nullsafety with collection
  /*
    const cities = ['london','Dhaka',null]; //without type constrains it's okey
    const cities =<string>['london','Dhaka',null]; //compile time error as nullsafety is enabled
      ///how to solve?
      ///either remove null,type annotation or make it nullable
    const cities =<string?>['london','Dhaka',null];
  
  //Itterate through loop

  for (var city in cities) {
    print(city.toUpperCase()); //runtime error cause null value in non-nullable variable
  }
    ///How to fix? 
    
  for (var city in cities) {
    if(city != null){
      print(city.toUpperCase());
    }
  }

  // Better way : Conditional Access Operator
  for (var city in cities) {
    print(city?.toUpperCase()); 
  }
  */
  const cities = ['london', 'Dhaka', null];
  print(cities);

  for (var city in cities) {
    if (city != null) {
      print(city.toUpperCase());
    }
  }

  for (var city in cities) {
    print(city?.toUpperCase());
  }
}
