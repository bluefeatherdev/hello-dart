/// Dart Keywords: [finally]

/// In Dart, `finally` is only part of the `try` statement syntax 
/// used for error handling. Its role: run a block of code after 
/// the `try` (and any matching `catch`) block finishes — [always], 
/// regardless of whether an exception occurred or not.

/// 1. [Primary Purpose]
void openFile() {
  print('Opening file...');
}

void readData() {
  print('Reading data...');
}

void closeFile() {
  print('File closed.');
}

/// 3. [`finally` and `return`]
/// `finally` runs even if `return` is used 
/// inside the try/catch block:
bool returnExample() {
  try {
    print('Return something...');
    return true;
  } finally {
    print('This runs even after return');
  }
}

/// 4. [`finally` and `break`]
/// `finally` runs even if `break` is used 
/// inside the try/catch block:
void breakExample() {
  try {
    for (var i = 1; i <= 5; i++) {
      if (i % 3 == 0) break;
      print('i: $i');
    }
    
  } finally {
    print('This runs even after break');
  }
}

void main() { 
  /// 1. [Primary Purpose]
  try {
    openFile();
    readData();
  } catch (e) {
    print('Error: $e');
  } finally {
    closeFile();  // Always runs
  }

  /// 2. [Placement Rules in Dart]
  /// Unlike some languages (e.g., Python’s [for/else] or [try/finally] 
  /// after loops, or `finally`-like constructs tied to loop control), 
  /// Dart’s `finally` is not allowed directly after a `for` or `while` loop.
  try {
    for (var i = 0; i < 3; i++) {
      print(i);
    }
  } finally {
    print('Loop finished, cleaning up...');
  }

  /// 3. [`finally` and `return`]
  returnExample();  // ...

  /// 4. [`finally` and `break`]
  breakExample();   // ...
}
