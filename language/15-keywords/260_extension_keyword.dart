/// Dart Keywords: [extension]

/// Extension methods add functionality to existing libraries. 
extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }
}

void main() { 
  print(int.parse('42'));  // Built-in (return 42)
  print('42'.parseInt());  // New extension (return 42)
}
