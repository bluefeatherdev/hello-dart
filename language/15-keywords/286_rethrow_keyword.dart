/// Dart Keywords: [rethrow]

/// The `rethrow` keyword in Dart is a subtle but powerful tool used 
/// exclusively within `catch` blocks to propagate an exception that 
/// was just caught.

/// - rethrow is used to re-throw the current exception caught in 
///   a catch clause.
/// - It differs from throw because throw can throw any exception, 
///   while rethrow is limited to the one currently being handled.

/// 1. [Selective Exception Handling]:
void processData() {
  try {
    List list = [0, 1, 2];
    print(list[3]);
  } catch (e) {
    if (e is FormatException) {
      print('Handled FormatException: ${e.message}');
    } else {
      // Let other exceptions bubble up
      rethrow;
    }
  }
}

void main() { 
  /// 1. [Selective Exception Handling]:
  processData();
}
