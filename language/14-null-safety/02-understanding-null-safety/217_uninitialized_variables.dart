/// Dart Null Safety: [Understanding null safety]

/// When you declare a variable, if you don't give it an explicit 
/// initializer, Dart default initializes the variable with null.

/// Top level variable and static field declarations 
/// must have an initializer.

// Using null safety
int topLevelInt = 0;

class SomeClass {
  static int staticField = 0;
}

/// Instance fields must either have an initializer at the declaration, 
/// use an initializing formal, or be initialized in the constructor's 
/// initialization list. 

// Using null safety
class SomeClass2 {
  int atDeclaration = 0;
  int initializingFormal;
  int initializationList;

  SomeClass2(this.initializingFormal)
    : initializationList = 0;
}

/// Local variables are the most flexible case. 
/// A non-nullable local variable doesn't need to have an initializer. 
/// This is perfectly fine:

// Using null safety
int tracingFibonacci(int n) {
  int result;
  if (n < 2) {
    result = n;
  } else {
    result = tracingFibonacci(n - 2) + tracingFibonacci(n - 1);
  }

  // Local variable must be definitely assigned before it is used.
  print(result);
  return result;
}

void main() {
  print(topLevelInt);
  print(SomeClass.staticField);

  final x = SomeClass2(3);
  print(x.atDeclaration);
  print(x.initializingFormal);
  print(x.initializationList);

  print(tracingFibonacci(5));
}

/// If a server application fails, you can often restart it 
/// before anyone notices. But when a Flutter app crashes on 
/// a user's phone, they are not happy. When your users aren't happy, 
/// you aren't happy.
