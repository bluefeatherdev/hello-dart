/// Dart Null Safety: [Understanding null safety]

/// Without null safety
/// ```dart
/// String missingReturn() {
///   // No return.
/// }
/// ```

// Using null safety:
String alwaysReturns(int n) {
  if (n == 0) {
    return 'zero';
  } else if (n < 0) {
    throw ArgumentError('Negative values not allowed.');
  } else {
    if (n > 1000) {
      return 'big';
    } else {
      return n.toString();
    }
  }
}

void main() {
  print(alwaysReturns(23));
  print(alwaysReturns(0));
  // print(alwaysReturns(-1));
  print(alwaysReturns(2025));
}

/// If a server application fails, you can often restart it 
/// before anyone notices. But when a Flutter app crashes on 
/// a user's phone, they are not happy. When your users aren't happy, 
/// you aren't happy.
