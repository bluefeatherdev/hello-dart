/// Dart Keywords: [const]

/// If you never intend to change a variable, use `final` or `const`, 
/// either instead of `var` or in addition to a type. 
/// A final variable can be set only once; a const variable 
/// is a compile-time constant. (Const variables are implicitly final.)
void constExample1() {
  const constInt = 23;
  const constDouble = 1.618033988749895;
  const constString = 'Jesús';
  const constBool = true;
  const constList = [1, 2, 3];
  const constSet = {'a', 2, true};
  const constMap = {'a': 1, 'b': 2, 'c': 3,};

  print(constInt);  // 23
  print(constDouble); // 1.618033988749895
  print(constString); // Jesús
  print(constBool); // true
  print(constList); // [1, 2, 3]
  print(constSet);  // {a, 2, true}
  print(constMap);  // {a: 1, b: 2, c: 3}
}

/// The `const` keyword isn't just for declaring constant variables. 
/// You can also use it to create constant values, as well as to 
/// declare constructors that create constant values. Any variable 
/// can have a constant value.
void constExample2() {
  var myVar = const [];
  final myFinal = const [];
  const myConst = [];

  print(myVar); // []
  print(myFinal); // []
  print(myConst); // []
}

void main() {
  constExample1();  // ...
  constExample2();  // ...
}
