/// Dart Null Safety: [Understanding null safety]

/// We also use definite assignment analysis to make [final variables] 
/// more flexible. Before null safety, it can be difficult to use 
/// `final` for local variables if you need to initialize them in 
/// any sort of interesting way:

// Using null safety:
int tracingFibonacci(int n) {
  final int result;

  if (n < 2) {
    result = n;
  } else {
    result = tracingFibonacci(n - 2) + tracingFibonacci(n - 1);
  }

  print(result);
  return result;
}

/// This would be an error since the `result` variable is `final` 
/// but has no initializer. With the smarter flow analysis under 
/// null safety, this program is fine. The analysis can tell that 
/// `result` is definitely initialized exactly once on every control flow 
/// path, so the constraints for marking a variable `final` are satisfied.

void main() {
  tracingFibonacci(3);
}

/// If a server application fails, you can often restart it 
/// before anyone notices. But when a Flutter app crashes on 
/// a user's phone, they are not happy. When your users aren't happy, 
/// you aren't happy.
