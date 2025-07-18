/// Dart Functions

// Here's an example of implementing a function:
final _nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 'argon',
  36: 'krypton',
  54: 'xenon',
  86: 'radon',
  118: 'oganesson',
};

bool isNoble(int atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}

/// Although Effective Dart recommends [type annotations for public APIs], 
/// the function still works if you omit the types:
isNoble2(int atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}

/// For functions that contain just one expression, 
/// you can use a shorthand syntax:
bool isNoble3(int atomicNumber) => _nobleGases[atomicNumber] != null;

void main() {  
  /// Dart is a true object-oriented language, so even functions are objects 
  /// and have a type, [Function]. This means that functions can be assigned 
  /// to variables or passed as arguments to other functions. You can also 
  /// call an instance of a Dart class as if it were a function. 
  /// For details, see [Callable objects].
  
  // Here's an example of implementing a function:
  print(isNoble(18)); // Prints: true
  print(isNoble(19)); // Prints: false

  /// Although Effective Dart recommends [type annotations for public APIs], 
  /// the function still works if you omit the types:
  print(isNoble2(18)); // Prints: true
  print(isNoble2(19)); // Prints: false 

  /// For functions that contain just one expression, 
  /// you can use a shorthand syntax:
  print(isNoble3(18)); // Prints: true
  print(isNoble3(19)); // Prints: false 

  /// The `=> expr` syntax is a shorthand for `{ return expr; }`. 
  /// The `=>` notation is sometimes referred to as [arrow] syntax.
  /// Only [expressions] can appear between the arrow (`=>`) and the semicolon (`;`).
}
