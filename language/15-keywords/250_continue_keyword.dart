/// Dart Keywords: [continue]

/// Use `continue` to skip to the next loop iteration:
void continueExample() {
  for (var i = 0; i < 10; i++) {
    if (i == 6) continue;
    print('i: $i');
  }
}

void main() {  
  continueExample(); // ...
}
